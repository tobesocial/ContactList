//
//  DetailListPersonViewController.swift
//  ContactList
//
//  Created by Дмитрий Федоров on 19.04.2023.
//

import UIKit

final class DetailListPersonViewController: UIViewController {
    
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var email: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumber.text = person.fullName
//        email.text = person.email
    }

}
