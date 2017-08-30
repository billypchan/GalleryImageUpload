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
        view.showLoading()
        interactor?.retrieveImageURLs()
    }
}

extension GalleryPresenter: GalleryInteractorOutput {
    func didRetrieveImageURLs(_ imageURLs: [URL]) {
        view?.hideLoading()
        view?.showImageURLs(imageURLs: imageURLs)
    }
    
    func didRetrieveImageURL(_ url: URL) {
        view?.hideLoading()
        view?.showImageURLAdded(url: url)
    }
    
    func didFinishUpload() {
        view?.hideLoading()
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
