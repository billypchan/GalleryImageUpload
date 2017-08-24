//
//  GalleryGalleryInitializer.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class GalleryModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var galleryViewController: GalleryViewController!

    override func awakeFromNib() {

        let configurator = GalleryModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: galleryViewController)
    }

}
