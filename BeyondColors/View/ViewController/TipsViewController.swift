//
//  TipsViewController.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 15/06/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import Foundation
import UIKit

class TipsViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?

    var numTip : Int = 1
    @IBOutlet weak var descTip: UILabel!
    @IBOutlet weak var falseTip: UIImageView!
    @IBOutlet weak var trueTip: UIImageView!
    @IBOutlet weak var btnLayout: UIButton!
    
    @IBAction func btnAction() {
        if numTip == 3{
            coordinator?.goToMainViewController()
        }
        else{
            nextTip()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnLayout.layer.cornerRadius = 14
    }
    
    func nextTip(){
        if numTip == 1{
            self.descTip.text = "2 - Evite usar imagens nos fundos dos textos."
            self.falseTip.image = UIImage(named: "Tip2f")
            self.trueTip.image = UIImage(named: "Tip2v")
            numTip = 2
        }
        else if numTip == 2{
            self.descTip.text = "3 - Dê preferência para conteúdos com fontes maiores."
            self.falseTip.image = UIImage(named: "Tip3f")
            self.trueTip.image = UIImage(named: "Tip3v")
            self.btnLayout.setTitle("Voltar ao Menu", for: .normal)
            numTip = 3
        }
    }
}
