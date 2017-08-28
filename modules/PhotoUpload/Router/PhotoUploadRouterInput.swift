//
//  PhotoUploadPhotoUploadRouterInput.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 28/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import Foundation

protocol PhotoUploadRouterInput {
    static func createPhotoUploadModule(parentView :UIViewController!) -> PhotoUploadViewController
}
