//
//  UploadUploadPresenter.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

class UploadPresenter: UploadModuleInput, UploadViewOutput, UploadInteractorOutput {

    weak var view: UploadViewInput!
    var interactor: UploadInteractorInput!
    var router: UploadRouterInput!

    func viewIsReady() {

    }
}
