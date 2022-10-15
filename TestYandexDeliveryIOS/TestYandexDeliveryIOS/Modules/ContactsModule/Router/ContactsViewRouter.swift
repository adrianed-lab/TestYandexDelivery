//
//  ContactsViewRouter.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

protocol BaseContactsRouterProtocol {
    var builder: BuilderProtocol? {get}
    var viewController: UIViewController? {get set}
}


protocol ContactsRouterProtocol: BaseContactsRouterProtocol {
    
}

class ContactsRouter: ContactsRouterProtocol {
   
    var builder: BuilderProtocol?
    var viewController: UIViewController?
    
    init(builder: BuilderProtocol, viewController: UIViewController) {
        self.builder = builder
        self.viewController = viewController
    }
}
