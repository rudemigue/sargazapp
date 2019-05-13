//
//
//  Sargazapp
//
//  Created by Miguel Jiménez on 5/10/19.
//  Copyright © 2019 Sargazapp. All rights reserved.
//

import UIKit

protocol CenterVCDelegate {
    func toggleLeftPanel()
    func addLeftPanelViewController()
    func animateLeftPanel(shouldExpand: Bool)
}
