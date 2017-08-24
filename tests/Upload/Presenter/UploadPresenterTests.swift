//
//  UploadUploadPresenterTests.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import XCTest

class UploadPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: UploadInteractorInput {

    }

    class MockRouter: UploadRouterInput {

    }

    class MockViewController: UploadViewInput {

        func setupInitialState() {

        }
    }
}
