//
//  ProfileViewController.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import UIKit

protocol ProfileViewProtocol: AnyObject {
    
}

class ProfileViewController: UIViewController, ProfileViewProtocol {

    var presenter: ProfileViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
