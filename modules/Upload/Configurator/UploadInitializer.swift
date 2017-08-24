//
//  UploadUploadInitializer.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class UploadModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var uploadViewController: UploadViewController!

    override func awakeFromNib() {

        let configurator = UploadModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: uploadViewController)
    }

}
