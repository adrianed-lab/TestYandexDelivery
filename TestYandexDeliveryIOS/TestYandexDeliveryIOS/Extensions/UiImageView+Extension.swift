//
//  UiImageView+Extension.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit

extension UIImageView {
    func getProductPhoto(photoURL: String) {
        guard let imageUrl = URL(string: photoURL) else {return}
        DispatchQueue.global(qos: .utility).async {
            if let imageData = try? Data(contentsOf: imageUrl) {
                DispatchQueue.main.async {
                    self.image = UIImage(data: imageData)
                }
            }
        }
    }
}
