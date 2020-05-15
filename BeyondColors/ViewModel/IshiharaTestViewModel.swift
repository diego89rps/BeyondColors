//
//  IshiharaViewModel.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 12/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import Foundation
import UIKit

class IshiharaTestViewModel {
    
    private var newScene : Ishihara.IshirahaTest?
    private var corretAnswers : [String] = []
    private var allAnswers : [String] = []
    private var redGreen : Bool = false
    
    func page(numPage : Int) {
        
        switch numPage {
            case 0:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image01)!, btn1: "12", btn2: "2", btn3: "X", correct: 1)
            case 1:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image02)!, btn1: "3", btn2: "X", btn3: "8", correct: 3)
            case 2:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image03)!, btn1: "29", btn2: "70", btn3: "X", correct: 1)
            case 3:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image04)!, btn1: "2", btn2: "5", btn3: "X", correct: 2)
            case 4:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image05)!, btn1: "5", btn2: "X", btn3: "3", correct: 3)
            case 5:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image06)!, btn1: "X", btn2: "17", btn3: "15", correct: 3)
            case 6:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image07)!, btn1: "21", btn2: "74", btn3: "X", correct: 2)
            case 7:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image08)!, btn1: "6", btn2: "X", btn3: "8", correct: 1)
            case 8:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image09)!, btn1: "X", btn2: "15", btn3: "45", correct: 3)
            case 9:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image10)!, btn1: "X", btn2: "2", btn3: "5", correct: 3)
            case 10:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image11)!, btn1: "X", btn2: "7", btn3: "1", correct: 2)
            case 11:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image12)!, btn1: "16", btn2: "18", btn3: "X", correct: 1)
            case 12:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image13)!, btn1: "73", btn2: "X", btn3: "13", correct: 1)
            case 13:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image14)!, btn1: "5", btn2: "X", btn3: "2", correct: 2)
            //ERRO 5
            case 14:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image15)!, btn1: "12", btn2: "45", btn3: "X", correct: 3)
            //ERRO 45
            case 15:
                 newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image16)!, btn1: "26", btn2: "2", btn3: "6", correct: 1)
            //protan 6 deutan 2
            case 16:
                newScene = Ishihara.IshirahaTest.init(image: UIImage(named: Ishihara.IshirahaTestImages.image17)!, btn1: "4", btn2: "2", btn3: "42", correct: 4)
            //protan 2 deutan 4
            

            default:break
        }
    }
    
    func getImage() -> UIImage {
        return newScene!.image
    }
    
    func getBtnOne() -> String{
        return newScene!.btnOne
    }
    
    func getBtnTwo() -> String{
        return newScene!.btnTwo
    }
    
    func getBtnTree() -> String{
        return newScene!.btnTree
    }
    
    func getCorrect() -> Int{
        return newScene!.correctAnswer
    }
    
    func getListAnswers() -> [String]{
        return corretAnswers
    }
    
    func testAnswer(btnNum : Int, sender: UIButton) {
        if btnNum == getCorrect(){
            corretAnswers.append(sender.currentTitle!)
        }
        allAnswers.append(sender.currentTitle!)
    }
    
    func getTextResult() -> String{

        if allAnswers[13].description == "5" &&
            self.allAnswers[14].description == "45" {
            return "É possível que você tenha um distúrbio de percepção do vermelho e do verde. Recomendamos que faça um teste profissional com o seu oculista ou oftalmologista."
        }
        else if corretAnswers.count < 11 {
            return "É possível que você tenha um distúrbio na percepção de cores. Recomendamos que faça um teste profissional com o seu oculista ou oftalmologista."
        }
        else{
            return "Aparentemente você não tem distúrbio na percepção de cores. Repita o teste regularmente para monitorar sua percepção de cores ou procure um oculista ou oftalmologista."
        }

    }
}
