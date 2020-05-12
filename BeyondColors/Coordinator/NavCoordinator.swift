//
//  NavCoordinator.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 12/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import Foundation
import UIKit

class NavCoodinator {
    
    func goToIshihara(origemVC : UIViewController, storyboard : String, id : String) {
        let mainStoryboard = UIStoryboard(name: storyboard, bundle: nil)
        if let vc: IshiharaViewController = mainStoryboard.instantiateViewController(withIdentifier: id) as? IshiharaViewController {
            
            vc.modalPresentationStyle = .fullScreen
            origemVC.present(vc, animated: true)
        }
    }
    
}
