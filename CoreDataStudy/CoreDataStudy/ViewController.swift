//
//  ViewController.swift
//  CoreDataStudy
//
//  Created by 채훈기 on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bmoc = CoreDataManager.shared.backgroundContext
        let mmoc = CoreDataManager.shared.persistentContainer.viewContext

        let p1 = Person(context: bmoc)
        p1.age = 2
        p1.name = "hoonv2"
//
        let p2 = Person(context: bmoc)
        p2.age = 3
        p2.name = "hoonv3"
//
//        try? bmoc.save()
        
        guard let bfetched = try? bmoc.fetch(Person.fetchRequest()) as? [Person],
              let mfetched = try? mmoc.fetch(Person.fetchRequest()) as? [Person]
              else { return }
        print(bfetched.map { $0.name })
        print(mfetched.map { $0.name })
    }


}
