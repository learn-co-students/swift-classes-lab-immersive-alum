//
//  House.swift
//  Thermometer
//
//  Created by Jim Campagno on 1/30/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class House {
    var thermometer: Thermometer
    
     init(fahrenheit: Double) {
        self.thermometer = Thermometer(fahrenheit: fahrenheit)
    }
    
    convenience init(thermometer: Thermometer) {
        self.init(fahrenheit: 0.0)
        self.thermometer = thermometer
    }
    
    func grandmaIsOver ()-> Void{
        self.thermometer.fahrenheit = 90.0
    }
}

