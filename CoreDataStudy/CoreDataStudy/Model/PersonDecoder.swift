//
//  PersonDecoder.swift
//  CoreDataStudy
//
//  Created by 채훈기 on 2020/12/24.
//

import UIKit

class PersonDecoder {
    
    private let fileName = "data"
    
    public func decode() -> [JsonPerson] {
        let decoder = JSONDecoder()
        guard let asset = NSDataAsset(name: fileName)?.data,
              let person = try? decoder.decode([JsonPerson].self, from: asset)
        else { return []}
        
        return person
    }
}
