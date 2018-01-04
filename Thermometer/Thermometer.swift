//
//  Thermometer.swift
//  Thermometer
//
//  Created by Jim Campagno on 1/30/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class Thermometer {
    var fahrenheit: Double
    
    private var _celsius: Double = 0.0
    
    var celsius: Double{
        get{
            self._celsius = (self.fahrenheit-32)*5/9
            return self._celsius
        }
        set(value){
           self._celsius = value
            self.fahrenheit = self._celsius*9/5 + 32
        }
    }
    
    required init(fahrenheit: Double){
        self.fahrenheit = fahrenheit
    }
    
    private func getDescription()-> String{
        return String(format:"Fahrenheit: %.1f\nCelsius: %.1f",
                      Double(round(1*self.fahrenheit)/1),
                      Double(round(self.celsius*1)/1))
    }
    
    var description : String{
        return self.getDescription()
    }
}
