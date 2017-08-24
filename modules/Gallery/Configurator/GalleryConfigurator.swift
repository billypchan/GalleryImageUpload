//
//  GalleryGalleryConfigurator.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class GalleryModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? GalleryViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: GalleryViewController) {

        let router = GalleryRouter()

        let presenter = GalleryPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = GalleryInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
