//
//  APIService.swift
//  Learning
//
//  Created by Sathyabaman Kanasalingam on 7/12/18.
//  Copyright © 2018 Sathyabaman Kanasalingam. All rights reserved.
//

import Foundation
import Alamofire


enum APIError: String, Error {
  case noNetwork = "No Network"
  case serverOverload = "Server is overloaded"
  case permissionDenied = "You don't have permission"
}

protocol APIServiceProtocol {
  func fetchPopularPhoto( complete: @escaping ( _ success: Bool, _ user: [User], _ error: APIError? )->() )
}

class APIService: APIServiceProtocol {
  // Simulate a long waiting for fetching
  func fetchPopularPhoto( complete: @escaping ( _ success: Bool, _ user: [User], _ error: APIError? )->() ) {
    DispatchQueue.global().async {
      let urlString = "https://reqres.in/api/users?page=2";


//      sleep(3)
//      let path = Bundle.main.path(forResource: "content", ofType: "json")!
//      let data = try! Data(contentsOf: URL(fileURLWithPath: path))
//      let decoder = JSONDecoder()
//      decoder.dateDecodingStrategy = .iso8601
//      let photos = try! decoder.decode(User.self, from: data)
//      complete( true, photos.photos, nil )
      
      

      
      
      Alamofire.request(urlString, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
        .responseJSON {
          
          response in
          do {
//            print(response.result)
//            print(response.data!)
//            let person = try JSONDecoder().decode(User.self, from: response.data!)
//            print(person)

            
            if let dataVa = response.data {
              let json = try JSONSerialization.jsonObject(with: dataVa, options: []) as? [String : Any]
              
              var UserList = Data(json?["data"].arrayValue)
              
//              print(json ?? "")
            
            
              
              //let person = try JSONDecoder().decode(User.self, from: userData)
              
              
//              print(<#T##items: Any...##Any#>)
//
//              let person = try JSONDecoder().decode(User.self, from: data)
//              print(person)
            }
            
          } catch let error as NSError{
            print(error)
          }
          
         // let decoder = JSONDecoder()
         // let jsonData = try JSONSerialization.data(withJSONObject: response.result, options: .prettyPrinted)
          

       //   complete( true, users, nil )
      }
      
  
}
  }}
