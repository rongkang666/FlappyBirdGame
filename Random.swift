//
//  Random.swift
//  Flappy Bird
//
//  Created by apple on 10/05/2017.
//  Copyright © 2017 Kang Rong. All rights reserved.
//

import Foundation
import CoreGraphics

public extension CGFloat{

    public static func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat)
    -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + firstNum;
    
    }

}











































