//
//  GalleryGalleryPresenterTests.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import XCTest
@testable import GalleryImageUpload

class GalleryPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: GalleryInteractorInput {
        func uploadImage(image: UIImage) {
            
        }
        
        func retrieveImageURLs() {
            
        }
        

    }

    class MockRouter: GalleryRouterInput {
        static func createGalleryModule() -> UIViewController {
            return UIViewController()
        }
        

    }

    class MockViewController: GalleryViewInput {
        func showImageURLs(imageURLs: [URL]) {
            
        }
        
        func showImageURLAdded(url: URL) {
            
        }
        
        func showLoading() {
            
        }
        
        func hideLoading() {
            
        }
        
        func showError() {
            
        }
        

        func setupInitialState() {

        }
    }
}
