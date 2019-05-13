//
//  LeftSidePanelVC.swift
//  htchhkr-development
//
//  Created by Caleb Stultz on 4/29/17.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import UIKit
import Firebase

class LeftSidePanelVC: UIViewController {
    
    
   /* let appDelegate = AppDelegate.getAppDelegate()
    
    let currentUserId = Auth.auth().currentUser?.uid

    @IBOutlet weak var userEmailLbl: UILabel!
   
    @IBOutlet weak var userImageView: RoundImageView!
    @IBOutlet weak var loginOutBtn: UIButton!
   
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("")
       // pickupModeSwitch.isOn = false
      //  pickupModeSwitch.isHidden = true
      //  pickupModeLbl.isHidden = true
        
       // observePassengersAndDrivers()
        
        if Auth.auth().currentUser == nil {
            print("1")

            userEmailLbl.text = ""
            
            userImageView.isHidden = true
            loginOutBtn.setTitle("Sign Up / login", for: .normal)
        } else {
            print("2")

            userEmailLbl.text = Auth.auth().currentUser?.email
           
            userImageView.isHidden = false
            loginOutBtn.setTitle("Cerrar sesión", for: .normal)
        }
    }
    

    @IBAction func signUpLoginBtnWasPressed(_ sender: Any) {
        print("3")
        if Auth.auth().currentUser == nil {
            print("4")
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
            present(loginVC!, animated: true, completion: nil)

            
        } else {        print("5")

            do {
                print("6")

                try Auth.auth().signOut()
                userEmailLbl.text = ""
               
                userImageView.isHidden = true
               
                loginOutBtn.setTitle("Sign Up /Login", for: .normal)
                ////////////
                let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
                let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
                present(loginVC!, animated: true, completion: nil)
                ////////
                
            } catch (let error) {
                print(error)
            }
        }
    }*/
}
