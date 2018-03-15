//
//  ContactTableViewController.swift
//  CustomTable
//
//  Created by Muhksin Hilmi on 15/03/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    var contact: [Contact] = [.name,.phone,.email,.button]
    var cellReuseIdentifier = "contactCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "ContactTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellReuseIdentifier)

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contact.count
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! ContactTableViewCell
       
        cell.configureCell(contact: contact[indexPath.row])

        return cell
    }
    
}
