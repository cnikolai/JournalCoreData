//
//  EntryController.swift
//  JournalCoreData
//
//  Created by Cynthia Nikolai on 4/26/21.
//

import CoreData

class EntryController {
    
    static var sharedInstance = EntryController()
    
    // MARK:- Properties
    var entries: [Entry] = []
    
    private lazy var fetchRequest: NSFetchRequest<Entry> = {
        let request = NSFetchRequest<Entry>(entityName: "Entry")
        request.predicate = NSPredicate(value: true)
        return request
    }()
    
    private init() {}
    
    // MARK:- Functions
    // CRUD
    // Create
    func createEntry(title: String, body: String) {
        let entry = Entry.init(title: title, bodytext: body, timestamp: Date())
        entries.append(entry)
        //save
        CoreDataStack.saveContext()
    }
    
    //read
    func fetchEntries() {
        let entries = (try? CoreDataStack.context.fetch(self.fetchRequest)) ?? []
        print(entries.count)
        self.entries = entries
    }
    
    //update
    func updateEntry(_ entry: Entry) {
        CoreDataStack.saveContext()
    }
    
    //delete
    func deleteEntry() {
        //TODO tomorrow
    }
}
