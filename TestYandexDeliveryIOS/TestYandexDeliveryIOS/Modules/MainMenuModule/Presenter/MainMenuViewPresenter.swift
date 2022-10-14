//
//  MainMenuViewPresenter.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

protocol MainMenuViewPresenterProtocol: AnyObject {
    func configureMainMenuTableViewCell()
    func getCategoriesCount()
    func getProductsCount()
    func getProducts()
    func getCategories()
    var categories: ProductCategories? {get}
    var products: Products? {get}
}

class MainMenuViewPresenter: MainMenuViewPresenterProtocol {
    
    
    
    weak var view: MainMenuViewProtocol?
    private(set) var apiProvider: RestAPIProviderProtocol!
    private(set) var categories: ProductCategories?
    private(set) var products: Products?
    private(set) var router: MainMenuRouterProtocol
    
    required init(view: MainMenuViewProtocol, apiProvider: RestAPIProviderProtocol, router: ) {
        
    }
    
    func getProducts() {
        <#code#>
    }
    
    func getCategories() {
        <#code#>
    }
    
    func getCategoriesCount() {
        <#code#>
    }
    
    func getProductsCount() {
        <#code#>
    }
    
    func configureMainMenuTableViewCell() {
        <#code#>
    }
}
