//
//  mapaVC.swift
//  Sargazapp
//
//  Created by Miguel Jiménez on 5/11/19.
//  Copyright © 2019 Sargazapp. All rights reserved.
//

import UIKit

class mapaVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtn( sender: UIButton) {
        print("back presionado")
        dismiss(animated: true, completion: nil)
    }

}
