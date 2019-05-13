//
//  reportarVC.swift
//  Sargazapp
//
//  Created by Miguel Jiménez on 5/12/19.
//  Copyright © 2019 Sargazapp. All rights reserved.
//

import UIKit
import AVFoundation

class reportarVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var lugarPickerView: UIPickerView!
    @IBOutlet weak var estadoPickerView: UIPickerView!
    
    var lugarPickerData: [String] = [String]()
    
    var estadoPickerData: [String] = [String]()
    
    var miControladorImagen: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Connect data:
        self.lugarPickerView.delegate = self
        self.lugarPickerView.dataSource = self
        
        self.estadoPickerView.delegate = self
        self.estadoPickerView.dataSource = self
        
         //Input the data into the array
                lugarPickerData = ["Cancún","Cozumel", "Isla Mujeres","Playa del Carmen","Tulum"]
                estadoPickerData = ["Nulo","Poco","Medio", "Alto"]
        
        lugarPickerView.tag = 1
        estadoPickerView.tag = 2

        // Do any additional setup after loading the view.
        
        
        
        
        
    }
    @IBAction func backBtn( sender: UIButton) {
        print("back presionado")
        dismiss(animated: true, completion: nil)
    }
    @IBAction func  camaraBtn( sender: UIButton){
        
        /*AVCaptureDevice.requestAccess(for: .video) { success in
            if success { // if request is granted (success is true)
                DispatchQueue.main.async {
                    self.performSegue(withIdentifier: identifier, sender: nil)
                }
            } else { // if request is denied (success is false)
                // Create Alert
                let alert = UIAlertController(title: "Camera", message: "Camera access is absolutely necessary to use this app", preferredStyle: .alert)
                
                // Add "OK" Button to alert, pressing it will bring you to the settings app
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                    UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
                }))
                // Show the alert with animation
                self.present(alert, animated: true)
            }
        }*/
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return lugarPickerData.count
        if pickerView.tag == 1 {
            return lugarPickerData.count
        } else {
            return estadoPickerData.count
        }
        
    }
    
  
    
   
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    //return lugarPickerData[row]
        if pickerView.tag == 1 {
            return "\(lugarPickerData[row])"
        } else {
            return "\(estadoPickerData[row])"
        }
    }
    
    
  /*  // Capture the picker view selection
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
    }*/

    // Capture the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
    }
 
    
}

