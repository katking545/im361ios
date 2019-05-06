//
//  PracticeProUITests.swift
//  PracticeProUITests
//
//  Created by Katrina King on 4/9/19.
//  Copyright © 2019 Katrina King. All rights reserved.
//

import XCTest

class PracticeProUITests: XCTestCase {

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

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let signInButton = app.buttons["Sign In "]
        signInButton.tap()
        
        let element = app.otherElements.containing(.navigationBar, identifier:"UIView").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element.tap()
        
        let textField = element.children(matching: .textField).element(boundBy: 0)
        textField.tap()
        textField.tap()
        
        let textField2 = element.children(matching: .textField).element(boundBy: 1)
        textField2.tap()
        textField2.tap()
        signInButton.tap()
        app.buttons["How to prepare for your audition"].tap()
        app.buttons["Go Forward"].tap()
        
        
    }

}
