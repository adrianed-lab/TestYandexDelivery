//
//  Products.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation

struct Products: Codable {
    let id: String
    let categoryID: [Int]
    let name: String
    let image: String
    let welcomeDescription: String
    let quantity: Int
    let children: Bool?
    let pickerAspects: [PickerAspect]
    let options: [Option]
    let promotion: Double?

    enum CodingKeys: String, CodingKey {
        case id
        case categoryID = "categoryId"
        case name, image
        case welcomeDescription = "description"
        case quantity, children, pickerAspects, options, promotion
    }
}

struct Option: Codable {
    let pickerValue: String?
    let name: String
    let mainItem: MainItem
    let items: [Item]
}

struct Item: Codable {
    let id, name, itemDescription: String
    let image: String
    let options: [ItemOption]?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case itemDescription = "description"
        case image, options
    }
}

struct ItemOption: Codable {
    let name: String
    let id: String
    let image: String
    let itemOptionDescription: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case id = "_id"
        case image
        case itemOptionDescription = "description"
    }
}

struct MainItem: Codable {
    let id: String
    let name: String
    let mainItemDescription, image: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, image
        case mainItemDescription = "description"
    }
}

struct PickerAspect: Codable {
    let id: String
    let name: String
    let pickerAspectOptions: [PickerAspectOption]
    let uiHide: Bool?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, pickerAspectOptions, uiHide
    }
}

struct PickerAspectOption: Codable {
    let value: String?
    let name: String?
    let pickerAspectOptionDescription: String?
    let image: String
    let price: Double

    enum CodingKeys: String, CodingKey {
        case value, name
        case pickerAspectOptionDescription = "description"
        case image, price
    }
}


