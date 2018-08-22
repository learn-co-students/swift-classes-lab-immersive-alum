//
//  House.swift
//  Thermometer
//
//  Created by Jim Campagno on 1/30/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class House {
    let thermometer: Thermometer
    
    init() {
        self.thermometer = Thermometer(fahrenheit: 75.0)
    }
    
    func grandmaIsOver() {
        thermometer.fahrenheit = 90.0
    }
}

