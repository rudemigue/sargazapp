//
//  PlayaVC.swift
//  Sargazapp
//
//  Created by Miguel Jiménez on 5/11/19.
//  Copyright © 2019 Sargazapp. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore
import FBSDKLoginKit
import FBSDKCoreKit

class PlayaVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func backBtn( sender: UIButton) {
        print("back presionado")
        dismiss(animated: true, completion: nil)
    }
    


}
