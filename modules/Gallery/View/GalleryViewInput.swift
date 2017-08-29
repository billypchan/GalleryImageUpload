//
//  GalleryGalleryViewInput.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

protocol GalleryViewInput: class {

    /**
        @author Bill, Chan Yiu Por
        Setup initial state of the view
    */

    func setupInitialState()
    
    // PRESENTER -> VIEW
    func showError()
    
    func showLoading()
    
    func hideLoading()

}
