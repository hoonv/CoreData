//
//  JsonPerson.swift
//  CoreDataStudy
//
//  Created by 채훈기 on 2020/12/24.
//

import Foundation

// MARK: - JsonPerson
struct JsonPerson: Codable {
    let id: String
    let index: Int
    let guid: String
    let isActive: Bool
    let balance: String
    let picture: String
    let age: Int
    let eyeColor: EyeColor
    let name: Name
    let company, email, phone, address: String
    let about, registered, latitude, longitude: String
    let tags: [String]
    let range: [Int]
    let friends: [Friend]
    let greeting: String
    let favoriteFruit: FavoriteFruit

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case index, guid, isActive, balance, picture, age, eyeColor, name, company, email, phone, address, about, registered, latitude, longitude, tags, range, friends, greeting, favoriteFruit
    }
}

enum EyeColor: String, Codable {
    case blue
    case brown
    case green
}

enum FavoriteFruit: String, Codable {
    case apple
    case banana
    case strawberry
}

// MARK: - Friend
struct Friend: Codable {
    let id: Int
    let name: String
}

// MARK: - Name
struct Name: Codable {
    let first, last: String
}
