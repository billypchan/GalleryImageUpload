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
    
    func testUploadPhoto_expectNumberOfCellIncrease() {
        let firstCell = XCUIApplication().cells.element(boundBy: 0)
        
        var originalCount = 0
        if firstCell.waitForExistence(timeout: 10) {
            originalCount = Int(XCUIApplication().cells.count)
        }
        
        
            let app = XCUIApplication()
            app.navigationBars["Gallery"].buttons["Add"].tap()
            app.sheets.buttons["Choose from Photos"].tap()
            
            /**tap the second cell "Camera Roll" */
            let albumTable = XCUIApplication().tables.element(boundBy: 0)
            if albumTable.waitForExistence(timeout: 10) {
                app.tables.element(boundBy: 0).cells.element(boundBy: 1).tap()
                app.collectionViews["PhotosGridView"].cells.element(boundBy: 0).tap()
                app.buttons["Done"].tap()
                
                
                /** wait for spinner dismiss */
                let collectionView = XCUIApplication().collectionViews.element(boundBy: 0)
                let predicate = NSPredicate(format: "hittable == 1")
                
                expectation(for: predicate, evaluatedWith: collectionView, handler: nil)
                waitForExpectations(timeout: 10, handler: nil)
                
                /** expect number of cells increased */
                let newCount = XCUIApplication().cells.count
                
                XCTAssert(newCount > originalCount, "number of cells increased")
            }
            else {
                XCTAssert(false, "fail to show photo picker")
            }
            
        }
    
    
}
