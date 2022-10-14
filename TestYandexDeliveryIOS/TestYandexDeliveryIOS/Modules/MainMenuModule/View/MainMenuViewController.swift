//
//  MainMenuViewController.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import UIKit

protocol MainMenuViewProtocol: AnyObject {
    func successGetProducts()
    func failure(error: Error)
}

class MainMenuViewController: UIViewController, MainMenuViewProtocol {
    
    var presenter: MainMenuViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func successGetProducts() {
        
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
}
