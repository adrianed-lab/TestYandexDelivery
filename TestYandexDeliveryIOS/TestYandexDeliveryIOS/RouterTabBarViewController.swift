//
//  RouterTabBarViewController.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

protocol BaseRouter {
    var navigationTabBarController: UITabBarController? {get set}
    var builder: BuilderProtocol? {get set}
}

protocol ViewsRouterProtocol: BaseRouter {
    func initialViewControllers()
}

// Класс роутер, который инициализирует модули таббара
class TabBarViewControllerRouter: ViewsRouterProtocol {
    
    var navigationTabBarController: UITabBarController?
    var builder: BuilderProtocol?
    
    init(navigationTabBarController: UITabBarController, builder: BuilderProtocol) {
        self.navigationTabBarController = navigationTabBarController
        self.builder = builder
    }
    
// Непосредственно сам метод инициализации
    func initialViewControllers() {
        guard let builder = builder, let navigationController = navigationTabBarController else {return}
        let mainMenuViewController = UINavigationController(rootViewController: builder.createMainMenuModule(title: "Menu", image: UIImage(systemName: "fork.knife.circle")))
        let contactsViewController = UINavigationController(rootViewController: builder.createContactsModule(title: "Contacts", image: UIImage(systemName: "phone.circle")))
        let profileViewController = UINavigationController(rootViewController: builder.createProfileModule(title: "Profile", image: UIImage(systemName: "person.crop.circle")))
        let shopingCartViewController = UINavigationController(rootViewController: builder.createShoppingCartModule(title: "Shopping Cart", image: UIImage(systemName: "cart")))
            navigationController.viewControllers = [mainMenuViewController, contactsViewController, profileViewController, shopingCartViewController]
    }
}
