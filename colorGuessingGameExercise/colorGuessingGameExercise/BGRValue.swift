//
//  Color.swift
//  colorGuessingGameExercise
//
//  Created by Stephanie Ramos on 11/1/19.
//  Copyright © 2019 Stephanie N. Ramos. All rights reserved.
//

import UIKit

struct BRGValue {
    let alpha = CGFloat(1)
    
    var blue = CGFloat.random(in: 0...1)
    var red = CGFloat.random(in: 0...1)
    var green = CGFloat.random(in: 0...1)
    
    func brgColor() -> UIColor {
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
    }
    
    func highestBRG() -> CGFloat {
        let sortedBRG = [blue, red, green].sorted(by: {$0 > $1})
        return sortedBRG[0] 
    }
}
