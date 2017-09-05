//
//  House.swift
//  Thermometer
//
//  Created by Jim Campagno on 1/30/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class House{
    var thermometer:Thermometer
    init(){
        self.thermometer=Thermometer(fahrenheit: 75.0)
    }
    
    func grandmaIsOver(){
        self.thermometer=Thermometer(fahrenheit: 90.0)
    }
}
