//
//  ViewController.swift
//  funchatapp
//
//  Created by GalvanizeChris on 2/5/17.
//  Copyright © 2017 galvanizechris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var username: UITextField!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func loginButton_click(_ sender: AnyObject) {
//
        FirebaseManager.Login(email: email.text!, password: password.text!) { (success:Bool) in
            if(success) {
              self.performSegue(withIdentifier: "showProfile", sender: sender)
            }
        }
        
      
    }
    @IBAction func createButton_click(_ sender: Any) {
        FirebaseManager.CreateAccount(email: email.text!, password: password.text!, username: username.text!) {
            (result:String) in
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "showProfile", sender: sender)
            }
        }
    }
    
    
}

