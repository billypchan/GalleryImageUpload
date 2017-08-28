//
//  GalleryImageUploadUITests.swift
//  GalleryImageUploadUITests
//
//  Created by chan bill on 24/8/2017.
//  Copyright © 2017 chan bill. All rights reserved.
//

import XCTest

class GalleryImageUploadUITests: XCTestCase {
        
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
    
    func testCropToSquareAndRotateUIAction() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCUIApplication().navigationBars["GalleryImageUpload.GalleryView"].buttons["Add"].tap()
        XCUIApplication().navigationBars["Moments"].buttons["Photos"].tap()
        
        let app = XCUIApplication()
        app.collectionViews["PhotosGridView"].cells["Photo, Landscape, August 08, 2012, 8:52 PM"].tap()
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1)
        element.children(matching: .button).element(boundBy: 3).tap()
        app.sheets.buttons["Square"].tap()
        element.children(matching: .button).element(boundBy: 1).tap()
        app.buttons["Done"].tap()
        
    }
    
}
