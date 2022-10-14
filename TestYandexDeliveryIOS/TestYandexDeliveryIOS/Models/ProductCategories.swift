//
//  ProductCategories.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation

struct ProductCategories: Codable {
    let categories: [Categories]
}

struct Categories: Codable {
    let id: Int
    let name: String
    let img: String
}



