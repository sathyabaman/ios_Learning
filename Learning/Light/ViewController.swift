//
//  ViewController.swift
//  Learning
//
//  Created by Sathyabaman Kanasalingam on 7/12/18.
//  Copyright © 2018 Sathyabaman Kanasalingam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  lazy var viewModel: LightModel = {
    return LightModel()
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    initView()
    loadData()
  }
  
  func initView() {
    self.navigationItem.title = "Test Title"
  }
  
  func loadData() {
    viewModel.startFetchUsers()
  }

  @IBAction func yellowButtonClick(_ sender: Any) {
    print("Yellow button clicked")
  }
  
  
  
}

