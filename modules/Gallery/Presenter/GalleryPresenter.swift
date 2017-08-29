//
//  GalleryGalleryPresenter.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

class GalleryPresenter: GalleryModuleInput {

    weak var view: GalleryViewInput!
    var interactor: GalleryInteractorInput!
    var router: GalleryRouterInput!

    func viewIsReady() {

    }
}

extension GalleryPresenter: GalleryInteractorOutput {
    func didFinishUpload() {
        view?.hideLoading()
        ///FIXME: refresh images
    }

    func onError() {
        view?.hideLoading()
        view?.showError()
    }

}

extension GalleryPresenter :GalleryViewOutput {
    func uploadImage(image: UIImage) {
        view.showLoading()
        self.interactor.uploadImage(image: image)
    }
}
