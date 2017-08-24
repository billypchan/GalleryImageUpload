//
//  UploadUploadViewController.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class UploadViewController: UIImagePickerController, UploadViewInput {
    
    var output: UploadViewOutput!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()

        self.sourceType = .photoLibrary
        self.allowsEditing = true
        self.delegate = (self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate)
    }
    
    
    // MARK: UploadViewInput
    func setupInitialState() {
    }
}

extension UploadViewController: UIImagePickerControllerDelegate {
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        ///FIXME:
        /*
        TOCropViewController *cropController = [[TOCropViewController alloc] initWithCroppingStyle:self.croppingStyle image:image];
        cropController.delegate = self;
        
        // -- Uncomment these if you want to test out restoring to a previous crop setting --
        //cropController.angle = 90; // The initial angle in which the image will be rotated
        //cropController.imageCropFrame = CGRectMake(0,0,2848,4288); //The
        
        // -- Uncomment the following lines of code to test out the aspect ratio features --
        //cropController.aspectRatioPreset = TOCropViewControllerAspectRatioPresetSquare; //Set the initial aspect ratio as a square
        //cropController.aspectRatioLockEnabled = YES; // The crop box is locked to the aspect ratio and can't be resized away from it
        //cropController.resetAspectRatioEnabled = NO; // When tapping 'reset', the aspect ratio will NOT be reset back to default
        
        // -- Uncomment this line of code to place the toolbar at the top of the view controller --
        // cropController.toolbarPosition = TOCropViewControllerToolbarPositionTop;
        
        self.image = image;
        
        //If profile picture, push onto the same navigation stack
        if (self.croppingStyle == TOCropViewCroppingStyleCircular) {
            [picker pushViewController:cropController animated:YES];
        }
        else { //otherwise dismiss, and then present from the main controller
            [picker dismissViewControllerAnimated:YES completion:^{
                [self presentViewController:cropController animated:YES completion:nil];
                }];
        }
 */
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            self.dismiss(animated: true, completion: nil)
    }
}
