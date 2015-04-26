//
//  FoundationExampleViewController.swift
//  SobrKit-Example
//
//  Created by Silas Knobel on 26/04/15.
//  Copyright (c) 2015 Software Brauerei AG. All rights reserved.
//

import UIKit
import SobrKit

class FoundationExampleViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var localizedLabel: UILabel!
    @IBOutlet weak var localizedFormatLabel: UILabel!
    @IBOutlet weak var condensedLabel: UILabel!
    @IBOutlet weak var outputTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var output = ""

        //
        // String Extension
        //
        output += "String Extension:\n"
        self.localizedLabel.text = "hello-world-key".localized()
        self.localizedFormatLabel.text = "hello-key".localizedFormat("Homer")
        
        self.condensedLabel.text = "Without Whitespaces".condenseWhitespace()
        
        let validEmail = "hello@example.com"
        if validEmail.isValidEmail() {
            output += "\(validEmail) is a valid email address\n"
        }
        
        let invalidEmail = "foo@bar"
        if invalidEmail.isValidEmail() {
            output += "\(invalidEmail) is a valid email address\n"
        }
        else {
            output += "\(invalidEmail) is NOT a valid email address\n"
        }
        
        let regexPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let anotherValidEmail = "foo@bar.com"
        let anotherInvalidEmail = "john@doe"
        
        if anotherValidEmail.matchesRegex(regexPattern) {
            output += "\(anotherValidEmail) is a valid email.\n"
        }
        else {
            output += "\(anotherValidEmail) is NOT a valid email.\n"
        }
        
        if anotherInvalidEmail.matchesRegex(regexPattern) {
            output += "\(anotherInvalidEmail) is a valid email.\n"
        }
        else {
            output += "\(anotherInvalidEmail) is NOT a valid email.\n"
        }
        
        
        let trueString = "true"
        let falseString = "Lorem ipsum"
        
        if trueString.toBool() {
            output += "\(trueString) is true\n"
        }
        else {
            output += "\(trueString) is false\n"
        }
        
        if falseString.toBool() {
            output += "\(falseString) is true\n"
        }
        else {
            output += "\(falseString) is false\n"
        }
        
        let doubleString = "321.8384"
        let nonDoubleString = "x83.2"
        
        output += "doubleString (\(doubleString)) has a double value of \(doubleString.toDouble())\n"
        output += "nonDoubleStrig (\(nonDoubleString)) has a double value of \(nonDoubleString.toDouble())\n"
        
        
        //
        // Double Extension
        //
        output += "\n\n\nDouble Extension:\n"
        var format = ".0"
        output += "double (\(doubleString.toDouble())) formatted (with \(format)) output is: \(doubleString.toDouble().stringWithFormat(format))\n"
        format = ".2"
        output += "double (\(doubleString.toDouble())) formatted (with \(format)) output is: \(doubleString.toDouble().stringWithFormat(format))\n"
        
        
        //
        // NSURL Extension
        //
        output += "\n\n\nNSURL Extension:\n"
        var urlString = "http://www.example.com/index.html?query=hello&sort=asc&count=10"
        output += "url: \(urlString)\n"
        var url = NSURL(string: urlString)!
        var params = url.queryParameters()
        output += "found url parameters: \(params)\n"
        let query = params["query"]
        output += "params[\"query\"] = \(query)"
        
        
        self.outputTextView.text = output
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
