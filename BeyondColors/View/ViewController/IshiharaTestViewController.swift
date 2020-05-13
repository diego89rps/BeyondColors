//
//  HishiharaViewController.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 11/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//
import Foundation
import UIKit

class IshiharaTestViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    var vm : IshiharaTestViewModel = IshiharaTestViewModel()
    var offSet : Int = 0
    
    @IBOutlet weak var IshiharaImageTest: UIImageView!
    @IBOutlet weak var orientationText: UITextView!
    @IBOutlet weak var btnAnswerOne: UIButton!
    @IBOutlet weak var btnAnswerTwo: UIButton!
    @IBOutlet weak var btnAnswerTree: UIButton!

    @IBAction func answerOne(_ sender: UIButton) {
        vm.testAnswer(btnNum : 1, sender : sender)
        setPage(numPage: offSet)
    }
    
    @IBAction func answerTwo(_ sender: UIButton) {
        vm.testAnswer(btnNum : 2, sender : sender)
        setPage(numPage: offSet)
    }
    
    @IBAction func answerTree(_ sender: UIButton) {
        vm.testAnswer(btnNum : 3, sender : sender)
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

        if numPage <= 3 {
            vm.page(numPage: numPage)
            
            UIView.transition(with: self.IshiharaImageTest,
                              duration: 0.7,
                              options: .transitionCrossDissolve,
                              animations: {
                                self.IshiharaImageTest.image = self.vm.getImage()
            }, completion: nil)
            
            btnAnswerOne.setTitle(vm.getBtnOne(), for: .normal)
            btnAnswerTwo.setTitle(vm.getBtnTwo(), for: .normal)
            btnAnswerTree.setTitle(vm.getBtnTree(), for: .normal)
            offSet += 1
        }
        else{
            coordinator?.goToIshiharaResultViewController(sender : self.vm)
        }
    }
}
