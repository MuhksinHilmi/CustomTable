//
//  ContactTableViewCell.swift
//  CustomTable
//
//  Created by Muhksin Hilmi on 15/03/2018.
//  Copyright © 2018 Shinkan. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var spaceConstraint: NSLayoutConstraint!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var widthContraints: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        
    }
    
    func configureCell(contact: Contact) {
        
        textField1.keyboardType = contact == .phone ? .phonePad : .emailAddress
        
        if contact != .phone {
            widthContraints.constant = 0
            spaceConstraint.constant = 0
            
        }
    }
    
}
