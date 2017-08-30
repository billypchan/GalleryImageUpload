//
//  GalleryGalleryInteractorTests.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import XCTest
@testable import GalleryImageUpload

class GalleryInteractorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockPresenter: GalleryInteractorOutput {
        func didRetrieveImageURLs(_ imageURLs: [URL]) {
            
        }
        
        func didRetrieveImageURL(_ imageURLs: URL) {
            
        }
        
        func didFinishUpload() {
            
        }
        
        func onError() {
            
        }
        

    }
}
