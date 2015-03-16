//
//  CAEmitterLayer+Extension.swift
//  Snowfall
//
//  Created by Alek Festekjian on 11/5/14.
//  Copyright (c) 2014 Alek Festekjian. All rights reserved.
//

import Foundation
import QuartzCore
import UIKit

extension CAEmitterLayer {
    class func snowfallEmitter() -> CAEmitterLayer {
        var layer = CAEmitterLayer()
        layer.emitterPosition = CGPointMake(160.0, 0)
        layer.emitterSize = CGSizeMake(320.0, UIScreen.mainScreen().bounds.size.height)
        layer.emitterShape = kCAEmitterLayerLine
        
        // Set some properties and create the emitter cell
        layer.emitterCells = [CAEmitterCell.largeSnowflakeCell(), CAEmitterCell.smallSnowflakeCell()]
        return layer
    }
}