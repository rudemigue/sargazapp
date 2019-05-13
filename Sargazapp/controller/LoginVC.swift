//
//  LoginVC.swift
//  htchhkr-development
//
//  Created by Caleb Stultz on 4/29/17.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import UIKit
import Firebase

//import FBSDKLoginKit

class LoginVC: UIViewController, UITextFieldDelegate, Alertable {

   /* @IBOutlet weak var emailField: RoundedCornerTextField!
    @IBOutlet weak var passwordField: RoundedCornerTextField!
   // @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var authBtn: RoundedShadowButton3!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
        //view.bindtoKeyboard()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleScreenTap(sender:)))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func handleScreenTap(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }

    @IBAction func cancelBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func authBtnWasPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            authBtn.animateButton(shouldLoad: true, withMessage: nil)
            self.view.endEditing(true)
            
            if let email = emailField.text, let password = passwordField.text {

                Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
                    if error == nil {
                       // if let user = user {
                            /*if self.segmentedControl.selectedSegmentIndex == 0 {
                                let userData = ["provider": user.providerID] as [String: Any]
                                DataService.instance.createFirebaseDBUser(uid: user.uid, userData: userData, isDriver: false)
                            } else {
                                let userData = ["provider": user.providerID, "userIsDriver": true, "isPickupModeEnable": false, "driverIsOnTrip": false] as [String: Any]
                                DataService.instance.createFirebaseDBUser(uid: user.uid, userData: userData, isDriver: true)
                            }*/
                      //  }
                        print("auntentificacion con email  en firebase")
                        self.dismiss(animated: true, completion: nil)
                    } else {
                          self.authBtn.animateButton(shouldLoad: true, withMessage: "SIGN UP / LOGIN")
                        if let errorCode = AuthErrorCode(rawValue: error!._code) {
                            switch errorCode {
                          
                            case .wrongPassword:  //.errorCodeWrongPassword:
                              
                                self.showAlert("Contraseña Incorrecta")
                                self.authBtn.animateButton(shouldLoad: false, withMessage: "SIGN UP / LOGIN")
                           /////
                            case .invalidEmail: //.errorCodeInvalidEmail:
                                self.showAlert("NO es un correo valido")//yo lo agregue
                          self.authBtn.animateButton(shouldLoad: false, withMessage: "SIGN UP / LOGIN")
                                //////
                            default:
                                //self.showAlert("creado correctamente")//usuario creado con -> ERROR_MSG_UNEXPECTED_ERROR 0
                                print("craedo correctamente")
                            }
                        }
                        
                        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
                            if error != nil {
                                if let errorCode = AuthErrorCode(rawValue: error!._code) {
                                    switch errorCode {
                                    case .emailAlreadyInUse: //.errorCodeEmailAlreadyInUse:
                                        self.showAlert("correo ya registrado")
                                        self.authBtn.animateButton(shouldLoad: false, withMessage: "SIGN UP / LOGIN")
                                    case .invalidEmail:  ///.errorCodeInvalidEmail:
                                       self.showAlert("ERROR_MSG_INVALID_EMAIL")//usuario creado con firebase
                                        self.authBtn.animateButton(shouldLoad: false, withMessage: "SIGN UP / LOGIN")
                                    default:
                                        self.showAlert("ERROR_MSG_UNEXPECTED_ERROR 000 ")
                                        self.authBtn.animateButton(shouldLoad: false, withMessage: "SIGN UP / LOGIN")
                                    }
                                }
                            } /*else {
                                if let user = user {
                                    if self.segmentedControl.selectedSegmentIndex == 0 {
                                        let userData = ["provider": user.providerID] as [String: Any]
                                        DataService.instance.createFirebaseDBUser(uid: user.uid, userData: userData, isDriver: false)
                                    } else {
                                        let userData = ["provider": user.providerID, "userIsDriver": true, "isPickupModeEnable": false, "driverIsOnTrip": false] as [String: Any]
                                        DataService.instance.createFirebaseDBUser(uid: user.uid, userData: userData, isDriver: true)
                                    }
                                }
                                print("usuario creado con firebase")
                                self.dismiss(animated: true, completion: nil)
                            }*/
                        })
                    }
                })
            }
        }
    }*/
}
