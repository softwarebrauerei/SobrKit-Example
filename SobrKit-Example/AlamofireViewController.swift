//
//  AlamofireViewController.swift
//  SobrKit-Example
//
//  Created by Silas Knobel on 26/04/15.
//  Copyright (c) 2015 Software Brauerei AG. All rights reserved.
//

import UIKit

class AlamofireViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var jokeTextView: UITextView!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func loadRandomJoke(sender: AnyObject) {
        API.fetchJokes({ (jokes) -> Void in
            let randomIndex = self.randomIndexInRange(0..<jokes.count)
            let randomJoke = jokes[randomIndex]
            self.jokeTextView.text = randomJoke.text
        }, failure: { (error) -> Void in
            self.jokeTextView.text = error.localizedDescription
        })
    }
    
    
    //MARK: Helper
    func randomIndexInRange(range: Range<Int>) -> Int {
        return Int(arc4random_uniform(UInt32(range.endIndex - range.startIndex))) + range.startIndex
    }

}
