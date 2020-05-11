//
//  Colors.swift
//  BeyondColors
//
//  Created by Diego Ribeiro on 10/05/20.
//  Copyright © 2020 Diego Ribeiro. All rights reserved.
//

import Foundation
import UIKit

enum ColorBlindnessType {
    case protanopia
    case deuteranopia
    case tritanopia
    case noType
}

enum ColorName {
    case yellow, yellowOrange, Orange, redOrange, red, redViolet, violet, blueViolet, blue, blueGree, green, yellowGreen
}

func createColor(colorName : ColorName) -> UIColor{

    let hexColor = colorType(colorBlindnessType: .tritanopia, colorName: colorName)
    guard let color =  UIColor(fromHexCode: hexColor) else { fatalError("Should return a color of \(hexColor)") }
    return color
}

func colorType(colorBlindnessType : ColorBlindnessType, colorName : ColorName) -> String {
    
    switch colorBlindnessType {
        case .protanopia:
            return getProtanopiaColor(colorName: colorName)
        case .deuteranopia:
            return getDeuteranopiaColor(colorName: colorName)
        case .tritanopia:
            return getTritanopiaColor(colorName: colorName)
        default:
            return getColor(colorName: colorName)
        }
}

func getProtanopiaColor(colorName : ColorName) -> String{
    switch colorName {
    case .yellow:
        return "#F9F87F"
    case .yellowOrange:
        return "#EBEA6A"
    case .Orange:
        return "#D8D749"
    case .redOrange:
        return "#CCCB26"
    case .red:
        return "#C7C500"
    case .redViolet:
        return "#9B9B9B"
    case .violet:
        return "#6E6D90"
    case .blueViolet:
        return "#6D6DE3"
    case .blue:
        return "#4040E5"
    case .blueGree:
        return "#606080"
    case .green:
        return "#7C7D6E"
    case .yellowGreen:
        return "#A1A278"
    }
}

func getDeuteranopiaColor(colorName : ColorName) -> String{
    switch colorName {
    case .yellow:
        return "#FAFB8C"
    case .yellowOrange:
        return "#EDF176"
    case .Orange:
        return "#DEE551"
    case .redOrange:
        return "#D3DD2A"
    case .red:
        return "#CFDA00"
    case .redViolet:
        return "#A2AA95"
    case .violet:
        return "#72788B"
    case .blueViolet:
        return "#7175DC"
    case .blue:
        return "#3B35DE"
    case .blueGree:
        return "#5A5181"
    case .green:
        return "#736876"
    case .yellowGreen:
        return "#988C84"
    }
}

func getTritanopiaColor(colorName : ColorName) -> String{
    switch colorName {
    case .yellow:
        return "#FEA5AD"
    case .yellowOrange:
        return "#FD8B91"
    case .Orange:
        return "#FB6065"
    case .redOrange:
        return "#FA3538"
    case .red:
        return "#F90000"
    case .redViolet:
        return "#C28985"
    case .violet:
        return "#8A7F7A"
    case .blueViolet:
        return "#82CAC4"
    case .blue:
        return "#0DCEC8"
    case .blueGree:
        return "#1C8484"
    case .green:
        return "#2A8589"
    case .yellowGreen:
        return "#539CA3"
    }
}

func getColor(colorName : ColorName) -> String{
    switch colorName {
    case .yellow:
        return "#FFF000"
    case .yellowOrange:
        return "#FFCB00"
    case .Orange:
        return "#FF8F00"
    case .redOrange:
        return "#FF5100"
    case .red:
        return "#FF0000"
    case .redViolet:
        return "#C62CAE"
    case .violet:
        return "#8D19A3"
    case .blueViolet:
        return "#8440FF"
    case .blue:
        return "#005FFF"
    case .blueGree:
        return "#008E7B"
    case .green:
        return "#00B546"
    case .yellowGreen:
        return "#40E119"
    }
}


extension UIColor {
    //credits: Ethan Strider and Renan Trevia.
    convenience init?(fromHexCode hex: String) {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }
        
        if cString.count != 6 {
            return nil
        } else {
            var rgbValue: UInt32 = 0
            Scanner(string: cString).scanHexInt32(&rgbValue)
            self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                      green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                      blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                      alpha: 1)
        }
    }
}

