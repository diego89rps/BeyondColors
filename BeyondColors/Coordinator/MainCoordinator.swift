//
//  MainCoordinator.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 12/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        goToMainViewController()
    }
    
    func goToMainViewController() {
        let vc = ViewController.instantiate(Constants.Storyboard.mainStoryboard, id: Constants.Id.main)
        vc.coordinator = self
        navigationController.isNavigationBarHidden = true
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToIshiharaViewController() {
        let vc = IshiharaTestViewController.instantiate(Constants.Storyboard.ishiharaStoryboard, id: Constants.Id.ishihara)
        vc.coordinator = self
        navigationController.isNavigationBarHidden = true
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func goToIshiharaResultViewController(sender : IshiharaTestViewModel) {
        let vc = IshiharaResultViewController.instantiate(Constants.Storyboard.ishiharaResultStoryboard, id: Constants.Id.ishiharaResult)
        vc.coordinator = self
        vc.vm = sender
        navigationController.isNavigationBarHidden = true
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToColorSecViewController() {
        let vc = ColorSecViewController.instantiate(Constants.Storyboard.ColorSecStoryboard, id: Constants.Id.ColorSec)
        vc.coordinator = self
        navigationController.isNavigationBarHidden = true
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func goToTipsViewController() {
        let vc = TipsViewController.instantiate(Constants.Storyboard.TipsStoryboard, id: Constants.Id.Tips)
        vc.coordinator = self
        navigationController.isNavigationBarHidden = true
        self.navigationController.pushViewController(vc, animated: true)
    }
}
