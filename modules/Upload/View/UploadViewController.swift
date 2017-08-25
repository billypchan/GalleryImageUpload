//
//  UploadUploadViewController.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit
import TOCropViewController

class UploadViewController: UIImagePickerController, UploadViewInput, UINavigationControllerDelegate {
    weak var parentView :UIViewController!
    var output: UploadViewOutput!
    var image: UIImage?
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        
        self.sourceType = .photoLibrary
        self.allowsEditing = false
        self.delegate = (self as UIImagePickerControllerDelegate & UINavigationControllerDelegate)
        
    }
    
    
    // MARK: UploadViewInput
    func setupInitialState() {
    }
}

extension UploadViewController: UIImagePickerControllerDelegate {
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        var imageFromInfo = info[UIImagePickerControllerEditedImage]
        if imageFromInfo == nil {
            imageFromInfo = info[UIImagePickerControllerOriginalImage]
        }
        
        if let image = imageFromInfo as! UIImage! {
        
        let cropController = TOCropViewController(croppingStyle: TOCropViewCroppingStyle.default, image: image)
        cropController.delegate = self
        self.image = image
        //otherwise dismiss, and then present from the main controller
            parentView = picker.presentingViewController
        picker.dismiss(animated: true, completion: {() -> Void in
            self.parentView?.present(cropController, animated: true) { _ in
                self.parentView = nil
            }
        })
        }
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension UploadViewController: TOCropViewControllerDelegate {
    
}
