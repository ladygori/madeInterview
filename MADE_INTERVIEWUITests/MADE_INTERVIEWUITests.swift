//
//  MADE_INTERVIEWUITests.swift
//  MADE_INTERVIEWUITests
//
//  Created by Gaskins, Hannah on 8/23/19.
//  Tests added by Asaya, Ade on 3/4/21.
//  Copyright © 2019 Gaskins, Hannah. All rights reserved.
//

import XCTest

class MADE_INTERVIEWUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        
        XCUIApplication().launch()
        

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPortraitMode() {
        
        XCUIDevice.shared.orientation = UIDeviceOrientation.portrait
                
        let app = XCUIApplication()
        let buttonStaticText = app.staticTexts["button"]
        let hideMeText = app.staticTexts["Hide Me"]
        
        //Test Case 1: When initially launched, verify that Hide Me text and button are present on app screen
        
        XCTAssertTrue(hideMeText.exists)
        XCTAssertTrue(buttonStaticText.exists)
                
        //Test Case 2: When you click button, verify that Hide Me text is absent from app screen but button is present
        
        buttonStaticText.tap()
        
        XCTAssertFalse(hideMeText.exists)
        XCTAssertTrue(buttonStaticText.exists)
        
        //Test Case 3: When you click button again, verify that Hide Me text and button are present on app screen
        
        buttonStaticText.tap()
        
        XCTAssertTrue(hideMeText.exists)
        XCTAssertTrue(buttonStaticText.exists)
        
        
        // Test Case 4: When the Hide Me text is present and app is closed and relaunched,
        // Hide Me text and button should still be present
        
        var currentState = hideMeText.exists
        
        XCUIDevice.shared.press(.home)
        app.activate()
        
        var newState = hideMeText.exists
        
        XCTAssertTrue(currentState == newState)
        XCTAssertTrue(buttonStaticText.exists)
        
        // Test Case 5: When the Hide Me text is absent and app is closed and relaunched,
        // Hide Me text should be absent and button should be present
        
        buttonStaticText.tap()
        
        currentState = hideMeText.exists
        
        XCUIDevice.shared.press(.home)
        app.activate()
        
        newState = hideMeText.exists
        
        XCTAssertTrue(currentState == newState)
        XCTAssertTrue(buttonStaticText.exists)
        
        buttonStaticText.tap()
        
    }
    
    func testLandscapeMode() {
        
        XCUIDevice.shared.orientation = UIDeviceOrientation.landscapeLeft
                
        let app = XCUIApplication()
        let buttonStaticText = app.staticTexts["button"]
        let hideMeText = app.staticTexts["Hide Me"]
        
        //Test Case 1: When initially launched, verify that Hide Me text and button are present on app screen
        
        XCTAssertTrue(hideMeText.exists)
        XCTAssertTrue(buttonStaticText.exists)
                
        //Test Case 2: When you click button, verify that Hide Me text is absent from app screen but button is present
        
        buttonStaticText.tap()
        
        XCTAssertFalse(hideMeText.exists)
        XCTAssertTrue(buttonStaticText.exists)
        
        //Test Case 3: When you click button again, verify that Hide Me text and button are present on app screen
        
        buttonStaticText.tap()
        
        XCTAssertTrue(hideMeText.exists)
        XCTAssertTrue(buttonStaticText.exists)
        
        
        // Test Case 4: When the Hide Me text is present and app is closed and relaunched,
        // Hide Me text and button should still be present
        
        var currentState = hideMeText.exists
        
        XCUIDevice.shared.press(.home)
        app.activate()
        
        var newState = hideMeText.exists
        
        XCTAssertTrue(currentState == newState)
        XCTAssertTrue(buttonStaticText.exists)
        
        // Test Case 5: When the Hide Me text is absent and app is closed and relaunched,
        // Hide Me text should be absent and button should be present
        
        buttonStaticText.tap()
        
        currentState = hideMeText.exists
        
        XCUIDevice.shared.press(.home)
        app.activate()
        
        newState = hideMeText.exists
        
        XCTAssertTrue(currentState == newState)
        XCTAssertTrue(buttonStaticText.exists)
        
        buttonStaticText.tap()
        
    }

}
