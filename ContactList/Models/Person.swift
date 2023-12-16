//
//  Person.swift
//  ContactList
//
//  Created by nikita on 16.12.23.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        let names = ["Emma", "Liam", "William","Sophia", "James",
                     "Mia", "Jacob", "Abigail", "Emily", "Ethan"]
        let surnames = ["Smith", "Johnson", "Williams", "Jones", "Brown",
                        "Davis", "Miller", "Wilson", "Moore", "Taylor"]
        var persons: [Person] = []
        
        for (name, surname) in zip(Set(names), Set(surnames)) {
            persons.append(
                Person(
                    name: name,
                    surname: surname,
                    email: "\(name)\(surname)@email.com".lowercased(),
                    phone: String(Int.random(in: 1000000...9999999))
                )
            )
        }

        return persons
    }
}

