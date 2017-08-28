//
//  PhotoUploadPhotoUploadInitializer.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 28/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class PhotoUploadModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var photouploadViewController: PhotoUploadViewController!

    override func awakeFromNib() {

        let configurator = PhotoUploadModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: photouploadViewController)
    }

}
