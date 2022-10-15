//
//  TabBarViewController.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .red
        tabBar.unselectedItemTintColor = .black
    }
}
