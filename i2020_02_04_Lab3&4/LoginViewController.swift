//
//  LoginViewController.swift
//  i2020_02_04
//
//  Created by David Tran on 2/23/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var username = "User"
    var password = "P@55"
    
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
    if(usernameText.text == username && passwordText.text == password){
            
            performSegue(withIdentifier: "loginSegue", sender: self)
        
        }
    }
}
