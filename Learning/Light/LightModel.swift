//
//  LightModel.swift
//  Learning
//
//  Created by Sathyabaman Kanasalingam on 7/12/18.
//  Copyright © 2018 Sathyabaman Kanasalingam. All rights reserved.
//

import Foundation

class LightModel: NSObject {
  
  let apiService: APIServiceProtocol
  private var user: [User] = [User]()

  
  override init() {
   // super.init()
    self.apiService = APIService()
  }
  
  func startFetchUsers() {
    apiService.fetchPopularPhoto { [weak self] (success, users, error) in
      if let error = error {
        print("error \(error)")
      } else {
        self?.user = users
        print("Success \(users)")
      }
    }
  }
  
}
