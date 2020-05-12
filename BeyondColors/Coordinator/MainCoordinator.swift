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
        let vc = ViewController.instantiate(Constants.Storyboard.mainStoryboard, id: Constants.Id.main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
        
    }
    
    func goToIshiharaViewController() {
        let vc = IshiharaViewController.instantiate(Constants.Storyboard.ishiharaStoryboard, id: Constants.Id.ishihara)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
