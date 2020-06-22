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
    
    @IBOutlet weak var btnTipsLayout: UIButton!
    @IBOutlet weak var btnMenuLayout: UIButton!
    @IBOutlet weak var textResult: UITextView!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func btnGoToTips() {
        coordinator?.goToTipsViewController()
    }
    @IBAction func btnGoToMenu(_ sender: UIButton) {
        coordinator?.goToMainViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnTipsLayout.layer.cornerRadius = 14
        self.btnMenuLayout.layer.cornerRadius = 14
        self.btnMenuLayout.layer.borderWidth = 3
        self.result.text = "\(vm?.getListAnswers().count.description ?? "") de 15"
        self.textResult.text = vm?.getTextResult()
    }

}
