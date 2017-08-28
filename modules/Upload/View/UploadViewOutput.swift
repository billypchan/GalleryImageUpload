//
//  UploadUploadViewOutput.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

protocol UploadViewOutput {

    /**
        @author Bill, Chan Yiu Por
        Notify presenter that view is ready
    */

    func viewIsReady()
    
    func cropImage(image: UIImage, parentView :UIViewController!)
//    func uploadImage(image: UIImage)
//    func cropImage(image: UIImage)
}
