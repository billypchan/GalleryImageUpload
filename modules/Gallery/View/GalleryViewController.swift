//
//  GalleryGalleryViewController.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class GalleryViewController: UICollectionViewController, GalleryViewInput {

    var output: GalleryViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: GalleryViewInput
    func setupInitialState() {
    }

    @IBAction func uploadPhotoButtonTapped(_ sender: Any) {
        
    }
}
