//
//  User.swift
//  Learning
//
//  Created by Sathyabaman Kanasalingam on 7/12/18.
//  Copyright © 2018 Sathyabaman Kanasalingam. All rights reserved.
//

import Foundation
import SwiftyJSON

struct User: Codable {
  var data = [Data]()
  let page : Int
  let perPage : Int
  let total : Int
  let totalPages : Int
  
  init(data: [Data], page: Int, perPage: Int, total: Int, totalPages: Int) {
    self.data = data
    self.page = page
    self.perPage = perPage
    self.total = total
    self.totalPages = totalPages
  }
  
  init(info: JSON) {
    let array = info["Data"].arrayValue
    let page = info["page"].intValue
    let perPage = info["perPage"].intValue
    let total = info["total"].intValue
    let totalPages = info["totalPages"].intValue
    let data2 = array.map({ (elem) -> Data in
      return Data(avatar: "", firstName: "", id: 2, lastName: "")
    })
    self.init(data: data2, page: page, perPage: perPage, total: total, totalPages: totalPages)
  }
}

struct Data: Codable {
  let avatar : String
  let firstName : String
  let id : Int
  let lastName : String
  
  init(avatar : String, firstName: String, id: Int, lastName: String) {
    self.avatar = avatar
    self.firstName = firstName
    self.id = id
    self.lastName = lastName
  }
  
  init(info: JSON) {
    let avatar = info["avatar"].stringValue
    let firstName = info["firstName"].stringValue
    let id = info["id"].intValue
    let lastName = info["lastName"].stringValue
    self.init(avatar : avatar, firstName: firstName, id: id, lastName: lastName)
  }
  
}
