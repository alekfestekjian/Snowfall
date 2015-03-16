//
//  CAEmitterCell+Extension.swift
//  Snowfall
//
//  Created by Alek Festekjian on 11/5/14.
//  Copyright (c) 2014 Alek Festekjian. All rights reserved.
//

import Foundation
import QuartzCore
import UIKit

extension CAEmitterCell {
    class func smallSnowflakeCell() -> CAEmitterCell {
        var smallSnowflake = CAEmitterCell()
        smallSnowflake.birthRate = 100
        smallSnowflake.lifetime = 2.5
        smallSnowflake.scale = 0.05
        smallSnowflake.velocity = 0
        smallSnowflake.velocityRange = 0
        smallSnowflake.emissionRange = CGFloat(M_PI_2)
        smallSnowflake.emissionLongitude = CGFloat(M_PI)
        smallSnowflake.yAcceleration = 200
        smallSnowflake.alphaRange = 0.7
        smallSnowflake.alphaSpeed = 0.2
        smallSnowflake.contents = CAEmitterCell.drawSnowflake(UIColor.whiteColor(), radius: 10.0).CGImage
        return smallSnowflake
    }
    
    class func largeSnowflakeCell() -> CAEmitterCell {
        return CAEmitterCell()
    }
    
    class func drawSnowflake(color: UIColor, radius: CGFloat) -> UIImage{
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(radius*2, radius*2), false, UIScreen.mainScreen().scale)
        var ctx = UIGraphicsGetCurrentContext()
        CGContextSaveGState(ctx)
        
        CGContextSetFillColorWithColor(ctx, color.CGColor)
        var rect = CGRectMake(0, 0, radius*2, radius*2)
        CGContextFillEllipseInRect(ctx, rect)
        
        CGContextRestoreGState(ctx)
        var image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
}