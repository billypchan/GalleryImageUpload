//
//  ImageCollectionViewCell.swift
//  GalleryImageUpload
//
//  Created by chan bill on 30/8/2017.
//  Copyright © 2017 chan bill. All rights reserved.
//

import Foundation
import SDWebImage
import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    func set(imageURL: URL?) {
        if imageURL == nil {
            imageView.image = nil
            return
        }
        
        // Load the image using SDWebImage
        imageView.sd_setImage(with: imageURL, placeholderImage: UIImage())
    }
}
