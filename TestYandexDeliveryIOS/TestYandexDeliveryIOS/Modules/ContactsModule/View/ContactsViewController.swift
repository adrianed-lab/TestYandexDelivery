//
//  ContactsViewController.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import UIKit

protocol ContactsViewProtocol: AnyObject {
    
}

class ContactsViewController: UIViewController, ContactsViewProtocol {
    
    var presenter: ContactsViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
