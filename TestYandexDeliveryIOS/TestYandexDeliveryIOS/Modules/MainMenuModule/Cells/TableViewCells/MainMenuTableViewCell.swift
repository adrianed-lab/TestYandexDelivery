//
//  MainMenuTableViewCell.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import UIKit

protocol MainMenuTableViewCellProtocol {
    func configureCell(nameProduct: String, descriptionProduct: String, price: Double, productImageURL: String)
}

class MainMenuTableViewCell: UITableViewCell, MainMenuTableViewCellProtocol {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var buyProduct: UIButton!
    static let key = "MainMenuTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell(nameProduct: String, descriptionProduct: String, price: Double, productImageURL: String) {
        productImageView.getProductPhoto(photoURL: productImageURL)
        productName.text = nameProduct
        productDescription.text = descriptionProduct
        buyProduct.setTitle("from \(price)", for: .normal)
    }

    @IBAction func buyProduct(_ sender: Any) {
        
    }
    
}
