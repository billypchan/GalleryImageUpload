//
//  UploadUploadViewController.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class UploadViewController: UIImagePickerController, UploadViewInput, UINavigationControllerDelegate {
    var output: UploadViewOutput!
    var image: UIImage?
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        
//        self.sourceType = .camera ///FIXME: menu for camera, only for device
        self.sourceType = .photoLibrary ///FIXME: menu for camera
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
            
            self.image = image
            //otherwise dismiss, and then present from the main controller
            let parentView = picker.presentingViewController
            picker.dismiss(animated: true, completion: {() -> Void in
                self.output.cropImage(image: image, parentView: parentView)
            })
        }
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}

