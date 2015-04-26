//
//  Model.swift
//  SobrKit-Example
//
//  Created by Silas Knobel on 26/04/15.
//  Copyright (c) 2015 Software Brauerei AG. All rights reserved.
//

import Foundation
import SobrKit

final class Envelope: NSObject, ResponseObjectSerializable {
    var type: String
    var jokes: [Joke]
    
    init(response: NSHTTPURLResponse, representation: AnyObject) {
        self.type = representation.valueForKeyPath("type") as! String
        self.jokes = Joke.collection(response: response, representation: representation.valueForKeyPath("value")!)
    }
}

final class Joke: NSObject, ResponseObjectSerializable, ResponseCollectionSerializable {
    var id: Int
    var text: String
    
    required init(response: NSHTTPURLResponse, representation: AnyObject) {
        self.id = representation.valueForKeyPath("id") as! Int
        self.text = representation.valueForKeyPath("joke") as! String
    }
    
    static func collection(#response: NSHTTPURLResponse, representation: AnyObject) -> [Joke] {
        var jokes: [Joke] = []
        for jokeRepresentation in (representation as! [AnyObject]) {
            jokes.append(Joke(response: response, representation: jokeRepresentation))
        }
        return jokes
    }
}