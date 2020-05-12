//
//  Storyboarded.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 12/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate(_ storyboard: String, id: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(_ storyboard: String, id: String) -> Self {

        // load our storyboard
        let storyboard = UIStoryboard(name: storyboard, bundle: Bundle.main)

        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

//extension Storyboarded where Self: UIViewController {
//    static func instantiate() -> Self {
//        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        if let instance = storyboard.instantiateViewController(withIdentifier: "Main") as? Self {
//            return instance
//        } else {
//            fatalError("Failed to instantiate View Controller")
//        }
//    }
//}

