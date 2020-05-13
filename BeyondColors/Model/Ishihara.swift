//
//  IshiharaModel.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 12/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import Foundation
import UIKit

struct Ishihara {
    
    struct IshirahaTest {
         let image : UIImage
         let btnOne : String
         let btnTwo : String
         let btnTree : String
         let correctAnswer : Int
        
        init(image : UIImage, btn1 : String, btn2 : String, btn3 : String, correct : Int) {
            self.image = image
            self.btnOne = btn1
            self.btnTwo = btn2
            self.btnTree = btn3
            self.correctAnswer = correct
        }
    }
    
    struct IshirahaTestImages {
        
        static let image01 = "Ishihara01"
        static let image02 = "Ishihara02"
        static let image03 = "Ishihara03"
        static let image04 = "Ishihara04"
        static let image05 = "Ishihara05"
        static let image06 = "Ishihara06"
        static let image07 = "Ishihara07"
        static let image08 = "Ishihara08"
        static let image09 = "Ishihara09"
        static let image10 = "Ishihara10"
        static let image11 = "Ishihara11"
        static let image12 = "Ishihara12"
        static let image13 = "Ishihara13"
        static let image14 = "Ishihara14"
        static let image15 = "Ishihara15"
        static let image16 = "Ishihara16"
        static let image17 = "Ishihara17"
    }
}
