//
//  ModelAwareViewController.swift
//  SobrKit-Example
//
//  Created by Silas Knobel on 26/04/15.
//  Copyright (c) 2015 Software Brauerei AG. All rights reserved.
//

import UIKit
import SobrKit

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
    
    @IBAction func loadJoke(sender: AnyObject) {
        API.fetchJokes({ (jokes) -> Void in
            let randomIndex = self.randomIndexInRange(0..<jokes.count)
            let randomJoke = jokes[randomIndex]
            self.willChangeValueForKey("data") // temporary solution
            self.data.text = randomJoke.text
            self.didChangeValueForKey("data") // temporary solution
        }, failure: { (error) -> Void in
            self.willChangeValueForKey("data") // temporary solution
            self.data.text = error.localizedDescription
            self.didChangeValueForKey("data") // temporary solution
        })
    }
    
    func randomIndexInRange(range: Range<Int>) -> Int {
        return Int(arc4random_uniform(UInt32(range.endIndex - range.startIndex))) + range.startIndex
    }
}
