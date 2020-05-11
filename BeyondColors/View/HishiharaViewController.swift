//
//  HishiharaViewController.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 11/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import UIKit

class HishiharaViewController: UIViewController {
    
    var answers : [String] = []
    var offSet : Int = 0
    
    @IBOutlet weak var hishiharaImageTest: UIImageView!
    @IBOutlet weak var orientationText: UITextView!
    @IBOutlet weak var btnAnswerOne: UIButton!
    @IBOutlet weak var btnAnswerTwo: UIButton!
    @IBOutlet weak var btnAnswerTree: UIButton!
    
    @IBAction func answerOne(_ sender: UIButton) {
        answers.append(sender.currentTitle!)
        setPage(numPage: offSet)
    }
    @IBAction func answerTwo(_ sender: UIButton) {
        answers.append(sender.currentTitle!)
        setPage(numPage: offSet)
    }
    @IBAction func answerTree(_ sender: UIButton) {
        answers.append(sender.currentTitle!)
        setPage(numPage: offSet)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnAnswerOne.layer.cornerRadius = 34
        btnAnswerTwo.layer.cornerRadius = 34
        btnAnswerTree.layer.cornerRadius = 34
        setPage(numPage: offSet)
    }
    
    func setPage(numPage : Int){
        switch numPage {
        case 0:
            hishiharaImageTest.image = #imageLiteral(resourceName: "Ishihara24")
            btnAnswerOne.setTitle("0", for: .normal)
            btnAnswerTwo.setTitle("0", for: .normal)
            btnAnswerTree.setTitle("0", for: .normal)
        case 1:
            hishiharaImageTest.image = #imageLiteral(resourceName: "Ishihara01")
            btnAnswerOne.setTitle("1", for: .normal)
            btnAnswerTwo.setTitle("1", for: .normal)
            btnAnswerTree.setTitle("1", for: .normal)
        case 2:
            hishiharaImageTest.image = #imageLiteral(resourceName: "Ishihara12")
            btnAnswerOne.setTitle("2", for: .normal)
            btnAnswerTwo.setTitle("2", for: .normal)
            btnAnswerTree.setTitle("2", for: .normal)
        case 3:
            hishiharaImageTest.image = #imageLiteral(resourceName: "Ishihara12")
            btnAnswerOne.setTitle("2", for: .normal)
            btnAnswerTwo.setTitle("2", for: .normal)
            btnAnswerTree.setTitle("2", for: .normal)
        case 4:
            hishiharaImageTest.image = #imageLiteral(resourceName: "Ishihara12")
            btnAnswerOne.setTitle("2", for: .normal)
            btnAnswerTwo.setTitle("2", for: .normal)
            btnAnswerTree.setTitle("2", for: .normal)
        case 5:
            hishiharaImageTest.image = #imageLiteral(resourceName: "Ishihara12")
            btnAnswerOne.setTitle("2", for: .normal)
            btnAnswerTwo.setTitle("2", for: .normal)
            btnAnswerTree.setTitle("2", for: .normal)
        default:
            hishiharaImageTest.image = #imageLiteral(resourceName: "Ishihara01")
        }
        
        offSet += 1
    }
}
