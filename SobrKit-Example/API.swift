//
//  API.swift
//  SobrKit-Example
//
//  Created by Silas Knobel on 26/04/15.
//  Copyright (c) 2015 Software Brauerei AG. All rights reserved.
//

import Foundation
import Alamofire
import SobrKit

class API {
    
    /**
    Fetches Chuck Norris Jokes from http://www.icndb.com/
    
    :param: success Success closure with the jokes array
    :param: failure Failure closure with the error
    */
    class func fetchJokes(success: (jokes: [Joke]) -> Void, failure:(error: NSError) -> Void) {
        let request = Alamofire.request(.GET, "http://api.icndb.com/jokes/random/15", parameters: nil, encoding: ParameterEncoding.URL)
                      .validate(statusCode: 200..<300)
                      .responseObject { (_, _, envelope: Envelope?, error) -> Void in
                            error == nil ? success(jokes: envelope!.jokes) : failure(error: error!)
                        }
    }
}
