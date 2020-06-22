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
    var gameState : Int = 0
    var yellowBtn : Bool = false
    var orangeBtn : Bool = false
    var answer : Bool = false
    let textA = "Escolha as cores para pintar o circulo na cor "
    let answersList : [Int] = [3, 7, 11, 4, 10, 2, 6, 12, 8]
    let challengeList : [String] = ["LARANJA", "ROXA", "VERDE", "VERMELHO-ALARANJADO","AZUL-ESVERDEADO","AMARELO-ALARANJADO","VERMELHO-ARROXEADO","AMARELO-ESVERDEADO", "AZUL-ARROXEADO"]
    
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
    @IBOutlet weak var instructField: UILabel!
    @IBOutlet weak var resultAnswer: UILabel!
    
    @IBAction func orangeAction() {
        orangeBtn = true
        combineTest(value: 3)
    }
    @IBAction func greenAction() {
        combineTest(value: 11)
    }
    @IBAction func violetAction() {
        combineTest(value: 7)
    }
    @IBAction func redAction() {
        combineTest(value: 5)
    }
    @IBAction func yellowAction() {
        yellowBtn = true
        combineTest(value: 1)
    }
    @IBAction func blueAction() {
        combineTest(value: 9)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackBtnTer.isHidden = true
        CircleColor.layer.cornerRadius = CircleColor.frame.size.width/2
        CircleColor.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        CircleColor.layer.borderWidth = 4
        
        startButtons()
        
        let description = changeTextColor(message: NSMutableAttributedString(string: "\(textA)\(challengeList[gameState])"), location: textA.count, length: challengeList[gameState].count, color: (self.c?.createColor(colorBlindnessType: .noType, colorName: .Orange))!)
        
        instructField.attributedText = description
        
    }

    func combineTest(value: Int){
        if offSet == 0 {
            resultAnswer.text = ""
            combine += value
            offSet += 1
            changeColor(colorName : colorResult(value : combine))
            
        }
        else{
            combine += value
            yellowBtnTest()
            orangeBtnTest()
            combine = combine/2
            changeColor(colorName : colorResult(value : combine))
            testAnswer()
            self.combine = 0
            self.offSet = 0
        }
    }
    
    func yellowBtnTest(){
        if yellowBtn == true && combine > 8{
            combine += 12
        }
        yellowBtn = false
    }
    func orangeBtnTest(){
        if orangeBtn == true && combine == 14{
            combine = 2
        }
        orangeBtn = false
    }
    
    func testAnswer(){
        if combine == answersList[gameState]{
            
            resultAnswer.text = "ACERTOU!"
            self.gameState += 1
            if gameState == answersList.count{
                coordinator?.goToMainViewController()
            }
            else{
                let description = changeTextColor(message: NSMutableAttributedString(string: "\(textA)\(challengeList[gameState])"), location: textA.count, length: challengeList[gameState].count, color: (self.c?.createColor(colorBlindnessType: .noType, colorName: colorResult(value : answersList[gameState])))!)
                instructField.attributedText = description
                if gameState == 3 {
                    stackBtnTer.isHidden = false
                    stackDown.constant = 110
                }
            }

        }
        else{
            resultAnswer.text = "ERROU!"
        }
    }
    
    func colorResult(value : Int) -> ColorName {
        let color = value
        switch color {
            case 1:
                return ColorName.yellow
            case 2:
                return ColorName.yellowOrange
            case 3:
                return ColorName.Orange
            case 4:
                return ColorName.redOrange
            case 5:
                return ColorName.red
            case 6:
                return ColorName.redViolet
            case 7:
                return ColorName.violet
            case 8:
                return ColorName.blueViolet
            case 9:
                return ColorName.blue
            case 10:
                return ColorName.blueGree
            case 11:
                return ColorName.green
            case 12:
                return ColorName.yellowGreen
        default:
            return ColorName.Orange
        }
    }
    
    func changeColor(colorName : ColorName){
        UIView.transition(with: self.CircleColor,
                          duration: 0.7,
                          options: .transitionFlipFromTop,
                          animations: {
                            self.CircleColor.layer.backgroundColor = self.c?.createColor(colorBlindnessType: .noType, colorName: colorName).cgColor
        }, completion: nil)
    }
    
    func changeTextColor (message: NSMutableAttributedString, location: Int, length: Int, color: UIColor) -> NSMutableAttributedString {
        message.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSRange(location: location, length: length))
        return message
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
}
