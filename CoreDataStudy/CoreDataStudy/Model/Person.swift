//
//  Person+CoreDataClass.swift
//  CoreDataStudy
//
//  Created by 채훈기 on 2020/12/24.
//
//

import Foundation
import CoreData

@objc(Person)
public class Person: NSManagedObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var index: Int32
    @NSManaged public var id: String?
    @NSManaged public var guid: String?
    @NSManaged public var isActive: Bool
    @NSManaged public var balance: String?
    @NSManaged public var picture: String?
    @NSManaged public var age: Int16

}
