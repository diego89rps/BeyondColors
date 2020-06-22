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
    
    @IBOutlet weak var btnColorLearningLayout: UIButton!
    @IBOutlet weak var btnIshiharaLayout: UIButton!
    
    @IBAction func btnColorLearning() {
        coordinator?.goToColorSecViewController()
    }
    @IBAction func btnIshiharaTest(_ sender: UIButton) {
        coordinator?.goToIshiharaViewController()
    }
    @IBAction func btnTips() {
        coordinator?.goToTipsViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnColorLearningLayout.layer.cornerRadius = 14
        btnColorLearningLayout.layer.borderWidth = 3
        btnIshiharaLayout.layer.cornerRadius = 14
    }
    
}
