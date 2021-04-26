//
//  EntryTableViewCell.swift
//  JournalCoreData
//
//  Created by Cynthia Nikolai on 4/26/21.
//

import UIKit

class EntryTableViewCell: UITableViewCell {

    // MARK:- Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var entryTimeLabel: UILabel!
    
    // MARK:- Functions
    func configure(with entry: Entry) {
        titleLabel.text = entry.title
        entryTimeLabel.text = entry.timestamp?.formatToString()
    }
}
