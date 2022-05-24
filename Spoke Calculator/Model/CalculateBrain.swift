//
//  CalculateBrain.swift
//  Spoke Calculator
//
//  Created by Fed on 23.05.2022.
//

import Foundation

struct CalculateBrain {
    
    func calculatelength(parameter: CalculateModel) -> String {
        
        let s1 = pow(parameter.hubFlance, 2.0)
        let s2 = pow(parameter.hubDiameter, 2.0)
        let s3 = pow(parameter.erd, 2.0)
        let s4 = 2.0 * parameter.hubDiameter * parameter.erd
        let s5 = (360.0 / (parameter.countSpokes / 2.0) * parameter.crossesCount)
        
        return String(format: "%.2f", sqrt(s1 + s2 + s3 - s4 * cos(s5 * Double.pi / 180)))
    }
    
}
