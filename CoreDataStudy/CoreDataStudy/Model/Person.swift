//
//  Person+CoreDataClass.swift
//  CoreDataStudy
//
//  Created by 채훈기 on 2020/12/23.
//
//

import Foundation
import CoreData

@objc(Person)
public class Person: NSManagedObject {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16

}
