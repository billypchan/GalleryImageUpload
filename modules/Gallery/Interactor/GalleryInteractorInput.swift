//
//  GalleryGalleryInteractorInput.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import Foundation

protocol GalleryInteractorInput {
    func uploadImage(image: UIImage)
    func retrieveImageURLs()
}
