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
        <#code#>
    }
    
    func createProfileModule(title: String, image: UIImage?) -> UIViewController {
        <#code#>
    }
    
    func createShoppingCartModule(title: String, image: UIImage?) -> UIViewController {
        <#code#>
    }
    
    
}
