//
//  PhotoUploadPhotoUploadConfiguratorTests.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 28/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import XCTest

class PhotoUploadModuleConfiguratorTests: XCTestCase {

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
        let viewController = PhotoUploadViewControllerMock()
        let configurator = PhotoUploadModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "PhotoUploadViewController is nil after configuration")
        XCTAssertTrue(viewController.output is PhotoUploadPresenter, "output is not PhotoUploadPresenter")

        let presenter: PhotoUploadPresenter = viewController.output as! PhotoUploadPresenter
        XCTAssertNotNil(presenter.view, "view in PhotoUploadPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in PhotoUploadPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is PhotoUploadRouter, "router is not PhotoUploadRouter")

        let interactor: PhotoUploadInteractor = presenter.interactor as! PhotoUploadInteractor
        XCTAssertNotNil(interactor.output, "output in PhotoUploadInteractor is nil after configuration")
    }

    class PhotoUploadViewControllerMock: PhotoUploadViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
