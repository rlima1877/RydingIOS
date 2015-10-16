//
//  RydingUITests.swift
//  RydingUITests
//
//  Created by Rafael Lima on 10/15/15.
//  Copyright © 2015 Rafael Lima. All rights reserved.
//

import XCTest

class RydingUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        //testing to see if whenever user clicks on bus 1, bus 1 data actually shows on details screen.
        
        let app = XCUIApplication()
        app.buttons["Passenger"].tap()
        app.tables.staticTexts["Bus: 1"].tap()
        
        XCTAssert(app.staticTexts["Bus number: 1 Latitude: 37.4224764 Longitude: -122.0842499"].exists)
    }
    
}
