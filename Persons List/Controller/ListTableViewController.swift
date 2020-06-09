//
//  ListTableViewController.swift
//  Persons List
//
//  Created by Виталий Сосин on 08.06.2020.
//  Copyright © 2020 Vitalii Sosin. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    var persons = Person.getListPerson()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailPersonVC = segue.destination as! DetailPersonViewController
            detailPersonVC.person = persons[indexPath.section]
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! ListTableViewCell
        
        let person = persons[indexPath.section]
        cell.mailLabel.text = person.email
        cell.phoneLabel.text = person.phone
        
        return cell
    }
}
