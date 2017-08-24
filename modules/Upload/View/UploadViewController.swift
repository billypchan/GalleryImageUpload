//
//  UploadUploadViewController.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit

class UploadViewController: UIViewController, UploadViewInput {

    var output: UploadViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: UploadViewInput
    func setupInitialState() {
    }
}