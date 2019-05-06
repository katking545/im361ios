//
//  PracticeProTests.swift
//  PracticeProTests
//
//  Created by Katrina King on 4/9/19.
//  Copyright © 2019 Katrina King. All rights reserved.
//

import XCTest
@testable import PracticePro

class PracticeProTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let lessons = Lessons(name: "a flat scale", difficulty: 3, time: 10)
        XCTAssertEqual("a flat scale", lessons.name)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
