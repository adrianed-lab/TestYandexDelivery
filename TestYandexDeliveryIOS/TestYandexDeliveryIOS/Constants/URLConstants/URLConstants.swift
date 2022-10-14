//
//  URLConstants.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

struct URLConstants {
    
    static let baseURL = "https://burger-king-menu.p.rapidapi.com/"
    static var getProductCategories: String {
        baseURL.appending("categories")
    }
    static var getProducts: String {
        baseURL.appending("products")
    }
}
