//
//  ViewController.swift
//  AutoLogin
//
//  Created by JOEL CRAWFORD on 14/01/2020.
//  Copyright © 2020 RTS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var buttonsignin: UIButton!
    
    let user = "app@gmail.com"
    let psw = "123456"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //=======removing naviagation controller===
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    //=======naviagtion controller show up on the next controller=====
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }

    @IBAction func SignInBtn(_ sender: UIButton) {
        
        if user == username.text! && psw == password.text! {
            
            //=====saving some data on user defaults storage===
            UserDefaults.standard.set(username.text!, forKey: "user")
            let vc = storyboard?.instantiateViewController(identifier: "HomeVC")
            
            //=====pushing to the Home view contoller on login====
navigationController?.pushViewController(vc!, animated: true)
            
        } else {
            let alert = UIAlertController(title: "Alert", message: "Email or password is not matching", preferredStyle: .alert)
    
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil)
            alert.addAction(okAction)
            
            //=====presenting the alert===
            present(alert, animated: true, completion: nil)

                
            
        }
    }
    
}

