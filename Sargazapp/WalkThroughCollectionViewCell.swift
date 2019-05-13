//
//
//  Sargazapp
//
//  Created by Miguel Jiménez on 5/10/19.
//  Copyright © 2019 Sargazapp. All rights reserved.
//

import UIKit

class WalkThroughCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblSubTitle: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var cntView: UIView!
    @IBOutlet weak var imgvWalkthrough: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        DispatchQueue.main.async {
            self.cntView.layer.cornerRadius = 13.0
            self.cntView.layer.shadowColor = UIColor.lightGray.cgColor
            self.cntView.layer.shadowOpacity = 0.5
            self.cntView.layer.shadowOpacity = 10.0
            self.cntView.layer.shadowOffset = .zero
            self.cntView.layer.shadowPath = UIBezierPath(rect: self.cntView.bounds).cgPath
            self.cntView.layer.shouldRasterize = true
        }
    }

}
