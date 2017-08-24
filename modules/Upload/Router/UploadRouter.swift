//
//  UploadUploadRouter.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class UploadRouter: UploadRouterInput {
    static func createUploadModule() -> UIImagePickerController {
        let imagePickerController = UIImagePickerController()
            let configurator = UploadModuleConfigurator()
            
            configurator.configureModuleForViewInput(viewInput: imagePickerController)
            
            return imagePickerController
    }
}
