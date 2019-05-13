//
//  registroVC.swift
//  Sargazapp
//
//  Created by Miguel Jiménez on 5/12/19.
//  Copyright © 2019 Sargazapp. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit
import FBSDKCoreKit

class registroVC: UIViewController, Alertable {

    @IBOutlet weak var passwordText: textfield!
    @IBOutlet weak var mailText: textfield!
    @IBOutlet weak var apellidoText: textfield!
    @IBOutlet weak var nombreText: textfield!
    @IBOutlet weak var fcBtn: RoundedShadowButton2!
    @IBOutlet weak var authBtn: RoundedShadowButton3!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.bindtoKeyboard()
        
        
     //   var ref: DatabaseReference!
      //  ref = Database.database().reference()
        
      //  var currentUserId = Auth.auth().currentUser?.uid
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleScreenTap(sender:)))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func handleScreenTap(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    //////

   // @IBOutlet weak var facebookBtn: FBLoginButton!
    @IBOutlet weak var facebookBtn: FBSDKLoginButton!
    
    @IBAction func registrarBtn(_ sender: Any) {
        print("boton registra")
        Auth.auth().createUser( withEmail: mailText.text!,password: passwordText.text!) { (user, error) in

            if user != nil {
                print("usuario con exito")
                
                self.dismiss(animated: false, completion: nil)
                
               /* DispatchQueue.main.asyncAfter(deadline: .now() + 3){
               
                print("sdsfdsdf")
              
                }*/
            }
            if error != nil {
                print(" :( ")
                if let errorCode = AuthErrorCode(rawValue: error!._code) {
                    switch errorCode {
                    case .emailAlreadyInUse: //.errorCodeEmailAlreadyInUse:
                        self.showAlert("correo ya registrado")
                        self.authBtn.animateButton(shouldLoad: false, withMessage: "REGISTRAR")
                    case .invalidEmail:  ///.errorCodeInvalidEmail:
                        self.showAlert("Correo no válido")//usuario creado con firebase
                        self.authBtn.animateButton(shouldLoad: false, withMessage: "REGISTRAR")
                    default:
                        self.showAlert("  :(  ")
                        self.authBtn.animateButton(shouldLoad: false, withMessage: "REGISTRAR")
                    }
                }
            }
        }//)
        //}
        //self.dismiss(animated: true, completion: nil)
        
    
    }
    
    @IBAction func backBtn( sender: UIButton) {
        print("back presionado")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        
        //1.
        let alert = UIAlertController(title: "Nuevo Usuario",
                                      message: "Introduce tus datos por favor",
                                      preferredStyle: .alert)
        //2.
        let saveAction = UIAlertAction(title: "Guardar",
                                       style: .default) { action in
                                        let emailField = alert.textFields![0]
                                        let passwordField = alert.textFields![1]
        //3.
        Auth.auth().createUser(withEmail: emailField.text!,password: passwordField.text!) { user, error in
                                                                    
                }
        }
        //4.
        let cancelAction = UIAlertAction(title: "Cancelar",
                                         style: .default)
        //5.
        alert.addTextField { textEmail in
            textEmail.placeholder = "email"
        }
        alert.addTextField { textPassword in
            textPassword.isSecureTextEntry = true
            textPassword.placeholder = "contraseña"
        }
        //6.
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        //7.
        present(alert, animated: true, completion: nil)
    }

 
}
