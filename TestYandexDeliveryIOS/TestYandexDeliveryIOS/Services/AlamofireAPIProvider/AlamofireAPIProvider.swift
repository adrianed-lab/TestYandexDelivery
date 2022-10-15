//
//  AlamofireAPIProvider.swift
//  TestYandexDeliveryIOS
//
//  Created by admin on 14.10.22.
//

import Foundation
import UIKit
import Alamofire

protocol RestAPIProviderProtocol {
    func getCategories(completion: @escaping (Result<[Categories], Error>) -> Void)
    func getProducts(completion: @escaping (Result<[Products], Error>) -> Void)
}

class AlamofireAPIProvider: RestAPIProviderProtocol {
    
    static var valueAPIkey: String {
        guard let key = Bundle.main.infoDictionary?["API_KEY"] as? String else {return String()}
        return key
    }
    
    static let headers: HTTPHeaders = [
        "X-RapidAPI-Key" : valueAPIkey,
        "X-RapidAPI-Host" : "burger-king-menu.p.rapidapi.com"
    ]
    
    func getCategories(completion: @escaping (Result<[Categories], Error>) -> Void) {
        AF.request(URLConstants.getProductCategories, method: .get, headers: AlamofireAPIProvider.headers).responseDecodable(of: [Categories].self) { response in
            switch response.result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
            print(response.result)
        }
    }
    
    func getProducts(completion: @escaping (Result<[Products], Error>) -> Void) {
        AF.request(URLConstants.getProducts, method: .get, headers: AlamofireAPIProvider.headers).responseDecodable(of: [Products].self) { response in
            switch response.result {
            case .success(let result):
                completion(.success(result))
            case .failure(let error):
                completion(.failure(error))
            }
            print(response.result)
        }
    }
}
