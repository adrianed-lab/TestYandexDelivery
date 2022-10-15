//
//  ModuleBuilder.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

protocol BuilderProtocol {
    func createMainMenuModule(title: String, image: UIImage?) -> UIViewController
    func createContactsModule(title: String, image: UIImage?) -> UIViewController
    func createProfileModule(title: String, image: UIImage?) -> UIViewController
    func createShoppingCartModule(title: String, image: UIImage?) -> UIViewController
}

class ModuleBuilder: BuilderProtocol {
    
    func createMainMenuModule(title: String, image: UIImage?) -> UIViewController {
        let view = MainMenuViewController()
        let router = MainMenuRouter(builder: self, viewController: view)
        let apiProvider = AlamofireAPIProvider()
        let presenter = MainMenuViewPresenter(view: view, apiProvider: apiProvider, router: router)
        view.presenter = presenter
        return view
    }
    
    func createContactsModule(title: String, image: UIImage?) -> UIViewController {
        let view = ContactsViewController()
        let router = ContactsRouter(builder: self, viewController: view)
        let apiProvider = AlamofireAPIProvider()
        let presenter = ContactsViewPresenter(view: view, router: router, apiProvider: apiProvider)
        view.presenter = presenter
        return view
    }
    
    func createProfileModule(title: String, image: UIImage?) -> UIViewController {
        let view = ProfileViewController()
        let router = ProfileRouter(builder: self, viewController: view)
        let apiProvider = AlamofireAPIProvider()
        let presenter = ProfileViewPresenter(view: view, router: router, apiProvider: apiProvider)
        view.presenter = presenter
        return view
    }
    
    func createShoppingCartModule(title: String, image: UIImage?) -> UIViewController {
        let view = ShoppingCartViewController()
        let router = ShoppingCartRouter(builder: self, viewController: view)
        let apiProvider = AlamofireAPIProvider()
        let presenter = ShoppingCartViewPresenter(view: view, router: router, apiProvider: apiProvider)
        view.presenter = presenter
        return view
    }

}
