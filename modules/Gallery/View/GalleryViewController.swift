//
//  GalleryGalleryViewController.swift
//  GalleryImageUpload
//
//  Created by Bill, Chan Yiu Por on 24/08/2017.
//  Copyright © 2017 billchan. All rights reserved.
//

import UIKit
import TOCropViewController
import PKHUD

class GalleryViewController: UICollectionViewController, UINavigationControllerDelegate {
    
    var output: GalleryViewOutput!
    var imageURLs = [URL]()
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output.viewIsReady()
    }
    
    
    // MARK: GalleryViewInput
    func setupInitialState() {
    }
    
    @IBAction func uploadPhotoButtonTapped(_ sender: Any) {
        //        output?.showUploadScreen()
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = false
        imagePicker.delegate = self as UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
        self.present(imagePicker, animated: true)
    }
}

extension GalleryViewController: GalleryViewInput {
    func showImageURLs(imageURLs: [URL]) {
        self.imageURLs = imageURLs
        collectionView?.reloadData()
    }
    
    func showImageURLAdded(url: URL) {
        ///FIXME: insert
        if !self.imageURLs.contains(url) {
            self.imageURLs.insert(url, at: 0)
            collectionView?.reloadData()
        }
    }
    
    func showError() {
        HUD.flash(.label("Internet not connected"), delay: 2.0)
    }
    
    func showLoading() {
        HUD.show(.progress)
    }
    
    func hideLoading() {
        HUD.hide()
    }
    
}

extension GalleryViewController: UIImagePickerControllerDelegate {
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        var imageFromInfo = info[UIImagePickerControllerEditedImage]
        if imageFromInfo == nil {
            imageFromInfo = info[UIImagePickerControllerOriginalImage]
        }
        
        if let image = imageFromInfo as! UIImage! {
            
            let cropController = TOCropViewController(croppingStyle: TOCropViewCroppingStyle.default, image: image)
            cropController.delegate = self
            //otherwise dismiss, and then present from the main controller
            
            picker.dismiss(animated: true, completion: {() -> Void in
                self.present(cropController, animated: true)
            })
        }
    }
    
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension GalleryViewController: TOCropViewControllerDelegate {
    func cropViewController(_ cropViewController: TOCropViewController, didCropToImage image: UIImage, rect cropRect: CGRect, angle: Int) {
        
        
        output?.uploadImage(image: image)
        
        cropViewController.dismiss(animated: true, completion: nil)
    }
}

/** Collection view */
extension GalleryViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return imageURLs.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCollectionViewCell
        
        let url = imageURLs[indexPath.row]
        
        cell.set(imageURL: url)
        
        return cell
    }
}
