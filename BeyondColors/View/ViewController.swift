//
//  ViewController.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 09/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?

    @IBAction func btnIshiharaTest(_ sender: Any) {
        let newViewController = IshiharaViewController()
        self.navigationController?.pushViewController(newViewController, animated: true)
            // coordinator?.goToIshiharaViewController()
        print("aqio")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
