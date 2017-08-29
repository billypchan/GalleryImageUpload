//
//  GalleryGalleryInteractor.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import Firebase

class GalleryInteractor: GalleryInteractorInput {
    func uploadImage(image: UIImage) {
        // Get a reference to the storage service using the default Firebase App
        let storage = Storage.storage()
        
        // Create a root reference
        let storageRef = storage.reference()
        
        /** Upload from data in memory */
        // Data in memory
        //        let data = Data()
        if let data = UIImageJPEGRepresentation(image, 0.7) {
            
            // Create a reference to the file you want to upload
            ///FIXME: UUID file name
            let uuid = UUID().uuidString
            let riversRef = storageRef.child("images/\(uuid).jpg")
            
            // Upload the file to the path "images/rivers.jpg"
            let uploadTask = riversRef.putData(data, metadata: nil) { (metadata, error) in
                guard let metadata = metadata else {
                    // Uh-oh, an error occurred!
                    self.output?.onError()
                    return
                }
                // Metadata contains file metadata such as size, content-type, and download URL.
                let downloadURL = metadata.downloadURL
                self.output?.didFinishUpload()
            }
            
        }
    }
    
    
    weak var output: GalleryInteractorOutput!
    
}
