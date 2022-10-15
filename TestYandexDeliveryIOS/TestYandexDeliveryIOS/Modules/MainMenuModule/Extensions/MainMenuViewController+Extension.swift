//
//  MainMenuViewController+Extension.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

extension MainMenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.getProductsCountInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = menuTableView.dequeueReusableCell(withIdentifier: MainMenuTableViewCell.key, for: indexPath) as? MainMenuTableViewCell else {return UITableViewCell()}
        presenter.configureMainMenuTableViewCell(indexPath: indexPath, cell: cell)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        180
    }
    
    
}

extension MainMenuViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        presenter.getCategoriesCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.key, for: indexPath) as? CategoriesCollectionViewCell else {return UICollectionViewCell()}
        if indexPath.row == 0 {
            cell.setSelectedAttribute(isSelected: true)
            self.categoriesCollectionView.selectItem(at: indexPath, animated: true, scrollPosition: .top)
        }
        presenter.configureCategoriesCollectionViewCell(indexPath: indexPath, cell: cell)
        return cell
    }
}
