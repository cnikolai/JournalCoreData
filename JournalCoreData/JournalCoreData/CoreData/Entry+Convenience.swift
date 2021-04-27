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

extension Entry {
    static func ==(lhs: Entry, rhs: Entry) -> Bool {
        return lhs.uuid == rhs.uuid
    }
}

//extension Entry {
//    static func == (lhs: Entry, rhs: Entry) -> Bool {
//        return lhs.title == rhs.title && lhs.title == rhs.title && lhs.timestamp == rhs.timestamp
//    }
//}
