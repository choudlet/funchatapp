//
//  SettingsViewController.swift
//  funchatapp
//
//  Created by GalvanizeChris on 2/6/17.
//  Copyright © 2017 galvanizechris. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var displayName: UILabel!
    var selectedUser:User?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated:Bool ) {
        let url:NSURL = NSURL(string:(selectedUser?.profileImageUrl)!)!
        guard let data:NSData = NSData(contentsOf: url as URL) else {print("broken"); return}
        
        
        
        
        displayName.text = selectedUser?.username
        if (selectedUser?.profileImageUrl != "") {
            imageView.image = UIImage(data: data as Data)
        }
    }
    
    @IBAction func getPhoto(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(image, animated:true, completion:nil)
        
    }
    

    @IBAction func update(_ sender: Any) {
      uploadPhoto()
    }
    
    func uploadPhoto() {
        selectedUser?.uploadProfilePhoto(profileImage: imageView.image!)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let pickerInfo:NSDictionary = info as NSDictionary
        let img:UIImage = pickerInfo.object(forKey: UIImagePickerControllerOriginalImage) as! UIImage
        imageView.image = img
        self.dismiss(animated:true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
