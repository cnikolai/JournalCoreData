//
//  Entry+Convenience.swift
//  JournalCoreData
//
//  Created by Cynthia Nikolai on 4/26/21.
//

import CoreData

extension Entry {
    @discardableResult convenience init(title: String, bodytext: String, timestamp: Date, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.title = title
        self.bodytext = bodytext
        self.timestamp = timestamp
    }
}
