//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by nikita on 16.12.23.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    @IBOutlet var personPhone: UILabel!
    @IBOutlet var personEmail: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        personPhone.text = "Phone: " + person.phone
        personEmail.text = "Email: " + person.email
    }
    
    

}
