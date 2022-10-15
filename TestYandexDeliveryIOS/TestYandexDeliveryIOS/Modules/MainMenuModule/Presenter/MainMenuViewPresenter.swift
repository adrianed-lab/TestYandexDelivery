//
//  MainMenuViewPresenter.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

protocol MainMenuViewPresenterProtocol: AnyObject {
    func configureMainMenuTableViewCell(indexPath: IndexPath, cell: MainMenuTableViewCellProtocol)
    func configureCategoriesCollectionViewCell(indexPath: IndexPath, cell: CategoriesCollectionViewCellProtocol)
    func getCategoriesCount() -> Int
    func getProductsCountInSection(section: Int) -> Int
    func getProducts()
    func getCategories()
    var categories: [Categories]? {get}
    var products: [Products]? {get}
}

class MainMenuViewPresenter: MainMenuViewPresenterProtocol {
    
    
    
    weak var view: MainMenuViewProtocol?
    private(set) var apiProvider: RestAPIProviderProtocol!
    private(set) var categories: [Categories]?
    private(set) var products: [Products]?
    private(set) var router: MainMenuRouterProtocol
    
    required init(view: MainMenuViewProtocol, apiProvider: RestAPIProviderProtocol, router: MainMenuRouterProtocol ) {
        self.view = view
        self.apiProvider = apiProvider
        self.router = router
        getProducts()
        getCategories()
    }
    
    func getProducts() {
        apiProvider.getProducts { [weak self] result in
            guard let self = self else {return}
            DispatchQueue.main.async {
                switch result {
                case .success(let value):
                    self.products = value
                    self.view?.successGetProducts()
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        }
    }
    
    func getCategories() {
        apiProvider.getCategories { [weak self] result in
            guard let self = self else {return}
            DispatchQueue.main.async {
                switch result {
                case .success(let value):
                    self.categories = value
                    self.view?.successGetProducts()
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        }
    }
    
    func getCategoriesCount() -> Int {
        categories?.count ?? 0
    }
    
    func getProductsCountInSection(section: Int) -> Int {
        switch section {
        case 0:
            let products = products?.filter({ $0.categoryID.contains { $0 == 1 }})
            guard let filteredProducts = products else {return 0}
            return filteredProducts.count
        case 1:
            let products = products?.filter({ $0.categoryID.contains { $0 == 2 }})
            guard let filteredProducts = products else {return 0}
            return filteredProducts.count
        case 2:
            let products = products?.filter({ $0.categoryID.contains { $0 == 3 }})
            guard let filteredProducts = products else {return 0}
            return filteredProducts.count
        case 3:
            let products = products?.filter({ $0.categoryID.contains { $0 == 4 }})
            guard let filteredProducts = products else {return 0}
            return filteredProducts.count
        case 4:
            let products = products?.filter({ $0.categoryID.contains { $0 == 5 }})
            guard let filteredProducts = products else {return 0}
            return filteredProducts.count
        case 5:
            let products = products?.filter({ $0.categoryID.contains { $0 == 6 }})
            guard let filteredProducts = products else {return 0}
            return filteredProducts.count
        default:
            return 0
        }
    }
    
    func configureMainMenuTableViewCell(indexPath: IndexPath, cell: MainMenuTableViewCellProtocol) {
        guard let products else {return}
        let imageURL = products[indexPath.row].image
        let productName = products[indexPath.row].name
        let productDescription = products[indexPath.row].welcomeDescription
        let price = products[indexPath.row].pickerAspects.first?.pickerAspectOptions.first?.price ?? 0.0
        cell.configureCell(nameProduct: productName, descriptionProduct: productDescription, price: price, productImageURL: imageURL)
    }
    
    func configureCategoriesCollectionViewCell(indexPath: IndexPath, cell: CategoriesCollectionViewCellProtocol) {
        guard let categories = categories else {return}
        let categoriesSorted = categories.sorted { $0.id < $1.id }
        let categoryName = categoriesSorted[indexPath.row].name
        cell.configureCell(nameCategory: categoryName)
    }

}
