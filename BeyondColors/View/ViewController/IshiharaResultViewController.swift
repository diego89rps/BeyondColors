//
//  IshiharaResultViewController.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 13/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import UIKit

class IshiharaResultViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    var vm : IshiharaTestViewModel?
    var answers : [String]?
    
    @IBOutlet weak var result: UILabel!
    @IBAction func btnGoToMenu(_ sender: UIButton) {
        coordinator?.goToMainViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.result.text = "\(vm?.getListAnswers().count.description ?? "") de 17"
        // Do any additional setup after loading the view.
    }

}
