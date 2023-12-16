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
        let data = DataStore()
        let names = Array(Set(data.names))
        let surnames = Array(Set(data.surnames))
        let emails = Array(Set(data.emails))
        let phones = Array(Set(data.phones))
        
        var persons: [Person] = []
        
        for i in 0..<names.count {
            persons.append(
                Person(
                    name: names[i],
                    surname: surnames[i],
                    email: emails[i],
                    phone: phones[i]
                )
            )
        }

        return persons
    }
}

