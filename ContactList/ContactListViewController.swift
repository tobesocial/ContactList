//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Дмитрий Федоров on 19.04.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private var userList = Person.mockPersonArray()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailListPersonViewController else {
            return
        }
//        detailsVC.person = sender as? Person
    }
    
}


// MARK: - TableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        let person = userList[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}

//MARK: UITableViewDelegate
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = userList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
}
