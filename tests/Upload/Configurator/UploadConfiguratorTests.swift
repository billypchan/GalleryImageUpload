//
//  UploadUploadConfiguratorTests.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import XCTest

class UploadModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = UploadViewControllerMock()
        let configurator = UploadModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "UploadViewController is nil after configuration")
        XCTAssertTrue(viewController.output is UploadPresenter, "output is not UploadPresenter")

        let presenter: UploadPresenter = viewController.output as! UploadPresenter
        XCTAssertNotNil(presenter.view, "view in UploadPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in UploadPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is UploadRouter, "router is not UploadRouter")

        let interactor: UploadInteractor = presenter.interactor as! UploadInteractor
        XCTAssertNotNil(interactor.output, "output in UploadInteractor is nil after configuration")
    }

    class UploadViewControllerMock: UploadViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
