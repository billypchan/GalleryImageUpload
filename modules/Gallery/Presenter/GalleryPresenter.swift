//
//  GalleryGalleryPresenter.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

class GalleryPresenter: GalleryModuleInput, GalleryViewOutput, GalleryInteractorOutput {

    weak var view: GalleryViewInput!
    var interactor: GalleryInteractorInput!
    var router: GalleryRouterInput!

    func viewIsReady() {

    }
}
