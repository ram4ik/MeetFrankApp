//
//  MeetFrankAppUITests.swift
//  MeetFrankAppUITests
//
//  Created by ramil on 16.06.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import XCTest

class MeetFrankAppUITests: XCTestCase {

    let meetFrankApp = XCUIApplication(bundleIdentifier: "com.meetfrank.ios")

    override func setUp() {
        meetFrankApp.launch()
    }
    
    override func tearDown() {
        meetFrankApp.terminate()
    }
    
    func testMeetFrankApp() throws {
        
        meetFrankApp.description
        meetFrankApp.debugDescription
        
        _ = meetFrankApp.wait(for: .runningForeground, timeout: 5)
        
        for _ in 1...9 {
            meetFrankApp.swipeUp()
        }
        
        meetFrankApp.buttons["Learn more"].firstMatch.tap()
        _ = meetFrankApp.wait(for: .runningForeground, timeout: 5)
    }
}
