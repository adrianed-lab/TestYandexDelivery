//
//  ProfileViewPresenter.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation

protocol ProfileViewPresenterProtocol: AnyObject {
    
}

class ProfileViewPresenter: ProfileViewPresenterProtocol {
    
    weak var view: ProfileViewProtocol?
    private(set) var router: ProfileRouterProtocol?
    private(set) var apiProvider: RestAPIProviderProtocol!
    
    required init(view: ProfileViewProtocol, router: ProfileRouterProtocol, apiProvider: RestAPIProviderProtocol) {
        self.view = view
        self.router = router
        self.apiProvider = apiProvider
    }
}
