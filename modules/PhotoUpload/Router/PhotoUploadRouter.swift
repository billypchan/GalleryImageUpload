//
//  PhotoUploadPhotoUploadRouter.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 28/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

class PhotoUploadRouter: PhotoUploadRouterInput {
    static func createPhotoUploadModule(parentView :UIViewController!) -> PhotoUploadViewController {
        let view = PhotoUploadViewController()
        let configurator = GalleryModuleConfigurator()
        
        configurator.configureModuleForViewInput(viewInput: view)
        
        return view
    }
}
