//
//  GalleryGalleryInteractorOutput.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import Foundation

protocol GalleryInteractorOutput: class {
    // INTERACTOR -> PRESENTER
    func didRetrieveImageURLs(_ imageURLs: [URL])
    func didRetrieveImageURL(_ imageURLs: URL)

    func didFinishUpload()
    
    func onError()
}
