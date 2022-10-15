//
//  ShoppingCartViewPresenter.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation

protocol ShoppingCartViewPresenterProtocol: AnyObject {
    
}

class ShoppingCartViewPresenter: ShoppingCartViewPresenterProtocol {
    
    weak var view: ShoppingCartViewProtocol?
    private(set) var router: ShoppingCartRouterProtocol?
    private(set) var apiProvider: RestAPIProviderProtocol!
    
    required init(view: ShoppingCartViewProtocol, router: ShoppingCartRouterProtocol, apiProvider: RestAPIProviderProtocol) {
        self.view = view
        self.router = router
        self.apiProvider = apiProvider
    }
}
