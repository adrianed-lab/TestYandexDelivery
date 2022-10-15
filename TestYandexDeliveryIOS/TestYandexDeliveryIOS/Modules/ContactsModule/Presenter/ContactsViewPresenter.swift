//
//  ContactsViewPresenter.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation

protocol ContactsViewPresenterProtocol: AnyObject {
    
}

class ContactsViewPresenter: ContactsViewPresenterProtocol {
    
    weak var view: ContactsViewProtocol?
    private(set) var router: ContactsRouterProtocol?
    private(set) var apiProvider: RestAPIProviderProtocol!
    
    required init(view: ContactsViewProtocol, router: ContactsRouterProtocol, apiProvider: RestAPIProviderProtocol) {
        self.view = view
        self.router = router
        self.apiProvider = apiProvider
    }
    
    
}
