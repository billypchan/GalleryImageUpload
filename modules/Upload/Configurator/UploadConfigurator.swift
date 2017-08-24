//
//  UploadUploadConfigurator.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class UploadModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? UploadViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: UploadViewController) {

        let router = UploadRouter()

        let presenter = UploadPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = UploadInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
