//
//  ModelAwareViewController.swift
//  SobrKit-Example
//
//  Created by Silas Knobel on 26/04/15.
//  Copyright (c) 2015 Software Brauerei AG. All rights reserved.
//

import UIKit

class MyModel: NSObject {
    var text: String?
}

class ModelAwareViewController: UIViewController {
    
    var data = MyModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
