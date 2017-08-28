//
//  UploadUploadPresenter.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//
import TOCropViewController

class UploadPresenter:NSObject, UploadModuleInput, UploadInteractorOutput {
    
    weak var view: UploadViewInput!
    var interactor: UploadInteractorInput!
    var router: UploadRouterInput!
    
//    weak var
    
    func viewIsReady() {
        //        parentView = (view as! UIViewController).navigationController
    }
}

extension UploadPresenter: UploadViewOutput {
    func cropImage(image: UIImage, parentView :UIViewController!) {
//        parentView = (view as! UIViewController).presentingViewController
        ///FIXME:
        let cropController = TOCropViewController(croppingStyle: TOCropViewCroppingStyle.default, image: image)
        cropController.delegate = self
        parentView?.present(cropController, animated: true) { _ in
//            self.parentView = nil
        }
    }
    
    func uploadImage(image: UIImage) {
        ///FIXME:
    }
}

///FIXME: I am died at this point
extension UploadPresenter: TOCropViewControllerDelegate {
    func cropViewController(_ cropViewController: TOCropViewController, didCropToRect cropRect: CGRect, angle: Int) {
        
    }
    
    func cropViewController(_ cropViewController: TOCropViewController, didFinishCancelled cancelled: Bool) {
        
    }
    
    func cropViewController(_ cropViewController: TOCropViewController, didCropToImage image: UIImage, rect cropRect: CGRect, angle: Int) {
        uploadImage(image:image)
        let img = image
    }
}
