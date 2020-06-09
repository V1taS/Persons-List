//
//  DetailPersonViewController.swift
//  Persons List
//
//  Created by Виталий Сосин on 09.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class DetailPersonViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        phoneLabel.text = "Phone: \(person.phone)"
        mailLabel.text = "Mail: \(person.email)"
        title = person.fullName
    }
}
