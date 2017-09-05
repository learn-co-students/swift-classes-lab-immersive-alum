//
//  ThermometerTests.swift
//  ThermometerTests
//
//  Created by Jim Campagno on 1/30/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import XCTest
@testable import Thermometer

class ThermometerTests: XCTestCase {

    let thermometer = Thermometer(fahrenheit: 70.0)
    let house = House()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

// MARK: - Thermometer Tests
extension ThermometerTests {
    
    func testThermometerInit() {
        XCTAssertEqual(thermometer.fahrenheit, 70.0, "Passing a value to the init function of Thermometer should set the fahrenheit property to equal that passed in value.")
    }
    
    func testCelsius() {
        thermometer.fahrenheit = 32.0
        XCTAssertEqual(thermometer.celsius, 0.0, "When Fahrenheit is equal to 32.0, Celsius should equal 0.0")
    }
    
    func testSetCelsius() {
        thermometer.celsius = 35.0
        XCTAssertEqual(thermometer.fahrenheit, 95.0, "When Celsius is equal to 35.0, Fahrenheit should equal 95.0")
    }
    
    func testDescription() {
        thermometer.celsius = 35.0
        let description = "Fahrenheit: 95.0\nCelsius: 35.0"
        XCTAssertEqual(thermometer.description, description, "Make sure you're creating a new line between Fahrenheit and Celsius.")
    }
    
}

//
//// MARK: - House Tests
extension ThermometerTests {
    
    func testGrandmaIsOver() {
        house.grandmaIsOver()
        XCTAssertEqual(house.thermometer.fahrenheit, 90.0, "When grandmaIsOver() is called, the thermometers fahrenheit property should equal 90.0")
    }
    
}
