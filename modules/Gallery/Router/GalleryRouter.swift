//
//  GalleryGalleryRouter.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class GalleryRouter: GalleryRouterInput {
    weak var parentView :UIViewController!
    
    class func createGalleryModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "GallerysNavigationController")
        if let view = navController.childViewControllers.first as? GalleryViewController {
            let configurator = GalleryModuleConfigurator()
            
            configurator.configureModuleForViewInput(viewInput: view)
            
            return navController
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
}
