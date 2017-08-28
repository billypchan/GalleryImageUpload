//
//  PhotoUploadPhotoUploadPresenter.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 28/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

class PhotoUploadPresenter: PhotoUploadModuleInput, PhotoUploadViewOutput, PhotoUploadInteractorOutput {

    weak var view: PhotoUploadViewInput!
    var interactor: PhotoUploadInteractorInput!
    var router: PhotoUploadRouterInput!

    func viewIsReady() {

    }
}
