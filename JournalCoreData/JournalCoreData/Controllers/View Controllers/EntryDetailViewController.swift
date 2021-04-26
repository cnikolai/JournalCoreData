//
//  EntryDetailViewController.swift
//  JournalCoreData
//
//  Created by Cynthia Nikolai on 4/26/21.
//

import UIKit

class EntryDetailViewController: UIViewController {

    // MARK:- Outlets
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    // MARK:- Properties
    var entry: Entry?
    
    // MARK:- Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    // MARK:- Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextField.text, !title.isEmpty,
              let body = bodyTextView.text, !body.isEmpty else { return }
        if let entry = entry {
            entry.title = title
            entry.bodytext = body
            EntryController.sharedInstance.updateEntry(entry)
        }
        else {
            EntryController.sharedInstance.createEntry(title: title, body: body)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearFieldsButtonTapped(_ sender: Any) {
        titleTextField.text = ""
        bodyTextView.text = ""
    }
    
    // MARK:- Functions
    func updateView() {
        guard let entry = entry else { return }
        titleTextField.text = entry.title
        bodyTextView.text = entry.bodytext
    }

}
