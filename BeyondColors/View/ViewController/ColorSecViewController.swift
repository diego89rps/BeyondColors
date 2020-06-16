//
//  ColorSecViewController.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 15/06/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import UIKit

class ColorSecViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    let c : ColorsViewModel? = ColorsViewModel()
    var offSet : Int = 0
    var combine : Int = 0
    var colorComnine : [ColorName] = []
    
    @IBOutlet weak var stackBtnTer: UIStackView!
    @IBOutlet weak var stackBtnSec: UIStackView!
    @IBOutlet weak var stackDown: NSLayoutConstraint!
    
    @IBOutlet weak var btnOrange: UIButton!
    @IBOutlet weak var btnGreen: UIButton!
    @IBOutlet weak var btnViolet: UIButton!
    
    @IBOutlet weak var btnRed: UIButton!
    @IBOutlet weak var btnYellow: UIButton!
    @IBOutlet weak var btnBlue: UIButton!
    
    
    @IBOutlet weak var CircleColor: UIView!
    @IBOutlet weak var instructionsField: UITextView!
    
    @IBAction func orangeAction() {
        changeColor(colorName : .yellow)
    }
    @IBAction func greenAction() {
    }
    @IBAction func violetAction() {
    }

    @IBAction func redAction() {
        stackBtnTer.isHidden = false
        stackDown.constant = 110
        changeColor(colorName : .blue)
    }
    @IBAction func yellowAction() {
    }
    @IBAction func blueAction() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackBtnTer.isHidden = true
        CircleColor.layer.cornerRadius = CircleColor.frame.size.width/2
        CircleColor.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        CircleColor.layer.borderWidth = 4
        
        startButtons()
    }
    
    func startButtons(){
        btnOrange.layer.backgroundColor = c?.createColor(colorBlindnessType: .noType, colorName: .Orange).cgColor
        btnOrange.layer.cornerRadius = 10
        btnOrange.layer.borderWidth = 4
        
        btnGreen.layer.backgroundColor = c?.createColor(colorBlindnessType: .noType, colorName: .green).cgColor
        btnGreen.layer.cornerRadius = 10
        btnGreen.layer.borderWidth = 4
        
        btnViolet.layer.backgroundColor = c?.createColor(colorBlindnessType: .noType, colorName: .violet).cgColor
        btnViolet.layer.cornerRadius = 10
        btnViolet.layer.borderWidth = 4
        
        
        btnRed.layer.backgroundColor = c?.createColor(colorBlindnessType: .noType, colorName: .red).cgColor
        btnRed.layer.cornerRadius = 10
        btnRed.layer.borderWidth = 4
        
        btnYellow.layer.backgroundColor = c?.createColor(colorBlindnessType: .noType, colorName: .yellow).cgColor
        btnYellow.layer.cornerRadius = 10
        btnYellow.layer.borderWidth = 4
        
        btnBlue.layer.backgroundColor = c?.createColor(colorBlindnessType: .noType, colorName: .blue).cgColor
        btnBlue.layer.cornerRadius = 10
        btnBlue.layer.borderWidth = 4
    }
    
    func changeColor(colorName : ColorName){
        UIView.transition(with: self.CircleColor,
                          duration: 0.7,
                          options: .transitionFlipFromTop,
                          animations: {
                            self.CircleColor.layer.backgroundColor = self.c?.createColor(colorBlindnessType: .noType, colorName: colorName).cgColor
        }, completion: nil)
    }
}
