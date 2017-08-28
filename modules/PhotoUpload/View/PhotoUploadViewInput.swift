//
//  PhotoUploadPhotoUploadViewInput.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 28/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

protocol PhotoUploadViewInput: class {

    /**
        @author Bill, Chan Yiu Por
        Setup initial state of the view
    */

    func setupInitialState()
    
    func display(parentView: UIViewController)
}
