//
//  CategoriesCollectionViewCell.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import UIKit

protocol CategoriesCollectionViewCellProtocol {
    func configureCell(nameCategory: String)

}

class CategoriesCollectionViewCell: UICollectionViewCell, CategoriesCollectionViewCellProtocol {
    
    @IBOutlet weak var categoryName: UILabel!
    static let key = "CategoriesCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override var isSelected: Bool {
        didSet {
            setSelectedAttribute(isSelected: isSelected)
        }
    }
    
    func setSelectedAttribute(isSelected: Bool) {
        categoryName.textColor = isSelected ? .red : .black
    }
    
    func configureCell(nameCategory: String) {
        categoryName.text = nameCategory
    }


}
