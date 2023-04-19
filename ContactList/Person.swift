//
//  User.swift
//  ContactList
//
//  Created by Дмитрий Федоров on 19.04.2023.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

//MARK: - Mock
extension Person {
    static func mockPerson(_ index: Int) -> Person {
        Person(
            name: personName[index],
            surname: personSurname[index],
            phoneNumber: personPhoneNumbers[index],
            email: personEmail[index]
        )
    }
    
    static func mockPersonArray() -> [Person] {
        var personArray: [Person] = []
        
        for index in 0...9 {
            personArray.append(mockPerson(index))
        }
        return personArray
    }
}
