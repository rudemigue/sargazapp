//
//  RoundedShadowButton.swift
//  Sargazapp
//
//  Created by Miguel Jiménez on 5/10/19.
//  Copyright © 2019 Sargazapp. All rights reserved.
//

import UIKit

class RoundedShadowButton: UIButton {
    
    
        
        override func awakeFromNib() {
            setupView()
        }
        
        func setupView() {
            self.layer.cornerRadius = self.frame.width / 8
            
            self.clipsToBounds = true
            
            
                self.layer.cornerRadius = 5.0
                self.layer.shadowOpacity = 0.3
                self.layer.shadowColor = UIColor.darkGray.cgColor
                self.layer.shadowRadius = 5.0
                self.layer.shadowOffset = CGSize(width: 0, height: 5)
            
            
        }
        
    


}
