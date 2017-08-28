//
//  PhotoUploadPhotoUploadConfigurator.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 28/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class PhotoUploadModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? PhotoUploadViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: PhotoUploadViewController) {

        let router = PhotoUploadRouter()

        let presenter = PhotoUploadPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = PhotoUploadInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
