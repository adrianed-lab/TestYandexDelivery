//
//  MainMenuViewController.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import UIKit

protocol MainMenuViewProtocol: AnyObject {
    func successGetProducts()
    func successGetCategories()
    func failure(error: Error)
}

class MainMenuViewController: UIViewController, MainMenuViewProtocol {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var menuTableView: UITableView!
    var presenter: MainMenuViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.register(UINib(nibName: "MainMenuTableViewCell", bundle: nil), forCellReuseIdentifier: MainMenuTableViewCell.key)
        categoriesCollectionView.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: CategoriesCollectionViewCell.key)
    }
    
    func successGetProducts() {
        menuTableView.reloadData()
    }
    
    func successGetCategories() {
        categoriesCollectionView.reloadData()
    }

    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
}
