//
//  ShoppingCartViewController.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import UIKit

protocol ShoppingCartViewProtocol: AnyObject {
    
}

class ShoppingCartViewController: UIViewController, ShoppingCartViewProtocol {

    var presenter: ShoppingCartViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
