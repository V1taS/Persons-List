//
//  Person.swift
//  Persons List
//
//  Created by Виталий Сосин on 08.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

extension Person {
    
    static func getListPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.firstNames.shuffled()
        let surnames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phoneas.shuffled()
        
        for index in 0..<names.count {
            
            let person = Person(firstName: names[index],
                                lastName: surnames[index],
                                email: emails[index],
                                phone: phones[index])
            persons.append(person)
        }
        return persons
    }
}
