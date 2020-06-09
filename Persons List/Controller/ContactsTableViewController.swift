//
//  ContactsTableViewController.swift
//  Persons List
//
//  Created by Виталий Сосин on 08.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    let persons = Person.getListPerson()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailPersonVC = segue.destination as! DetailPersonViewController
            detailPersonVC.person = persons[indexPath.row]
        }
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath)
        
        cell.textLabel?.text = persons[indexPath.row].fullName
        return cell
    }
}
