//
//  ShoppingCartRouter.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

protocol BaseShoppingCartRouterProtocol {
    var builder: BuilderProtocol? {get}
    var viewController: UIViewController? {get set}
}


protocol ShoppingCartRouterProtocol: BaseShoppingCartRouterProtocol {
    
}

class ShoppingCartRouter: ShoppingCartRouterProtocol {
   
    var builder: BuilderProtocol?
    var viewController: UIViewController?
    
    init(builder: BuilderProtocol, viewController: UIViewController) {
        self.builder = builder
        self.viewController = viewController
    }
}
