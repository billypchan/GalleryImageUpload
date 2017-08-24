//
//  GalleryGalleryConfiguratorTests.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import XCTest

class GalleryModuleConfiguratorTests: XCTestCase {

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
        let viewController = GalleryViewControllerMock()
        let configurator = GalleryModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "GalleryViewController is nil after configuration")
        XCTAssertTrue(viewController.output is GalleryPresenter, "output is not GalleryPresenter")

        let presenter: GalleryPresenter = viewController.output as! GalleryPresenter
        XCTAssertNotNil(presenter.view, "view in GalleryPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in GalleryPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is GalleryRouter, "router is not GalleryRouter")

        let interactor: GalleryInteractor = presenter.interactor as! GalleryInteractor
        XCTAssertNotNil(interactor.output, "output in GalleryInteractor is nil after configuration")
    }

    class GalleryViewControllerMock: GalleryViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
