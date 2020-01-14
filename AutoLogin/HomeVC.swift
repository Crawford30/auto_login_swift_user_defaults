//
//  HomeVC.swift
//  AutoLogin
//
//  Created by JOEL CRAWFORD on 14/01/2020.
//  Copyright © 2020 RTS. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //==========hiding the back button using the view will appear or didappear====
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(), style: .plain, target: self, action: nil)
    }
    
    //===============log out=====
    @IBAction func onClickedlogout(_ sender: Any) {
        //===removing the key on logout tapped===
        UserDefaults.standard.removeObject(forKey: "user")
        
        //====restore the root view controller or set a root view contoller, setting a login screen as the root view contoller==
        let vc = storyboard?.instantiateViewController(identifier: "signInViewController")
                   
                   //=====creating a navigation controller==
                   let navVC = UINavigationController(rootViewController: vc!)
                   
                   //===ading the navigation contoller to the window===
                   let share = UIApplication.shared.delegate as? AppDelegate
                   
                    //====assign root vc to nav vc====
                   share?.window?.rootViewController = navVC
                   
                   //======make it visible==
                   share?.window?.makeKeyAndVisible()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
