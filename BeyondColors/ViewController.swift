//
//  ViewController.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 09/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testColor: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testColor.backgroundColor = createColor(colorName: .blue)
        
    }
}

