//
//  PhotoUploadPhotoUploadViewController.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 28/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//
//  This view is virtual, not really display on the screen

import UIKit

class PhotoUploadViewController: NSObject, PhotoUploadViewInput {

    var output: PhotoUploadViewOutput!

    // MARK: Life cycle
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        output.viewIsReady()
//    }


    // MARK: PhotoUploadViewInput
    func setupInitialState() {
    }
    
    func display(parentView: UIViewController) {
        ///FIXME: pop up select photo screen
                let imagePickerController = UploadViewController()
                let configurator = UploadModuleConfigurator()
        
                configurator.configureModuleForViewInput(viewInput: imagePickerController)
        
//                return imagePickerController
                    let uploadViewController = UploadRouter.createUploadModule(parentView: parentView)
                    parentView.present(uploadViewController, animated: true)
    }

}
