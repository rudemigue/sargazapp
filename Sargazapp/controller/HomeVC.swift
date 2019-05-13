//
//  
//  Sargazapp
//
//  Created by Miguel Jiménez on 5/10/19.
//  Copyright © 2019 Sargazapp. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var walkThroughCollectionView:UICollectionView!
    @IBOutlet weak var icarruselView: iCarousel!
    
    var imgCarrusel = [ UIImage(named: "canje"),
                        UIImage(named: "usos-2"),
                        UIImage(named: "repor")]
    
    var delegate: CenterVCDelegate?

    override func viewDidLoad() {
       
        super.viewDidLoad()
        walkThroughCollectionView.register(UINib.init(nibName: "WalkThroughCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "walkThroughIdentifierß")
        
        let floawLayout = UPCarouselFlowLayout()
        floawLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 60.0, height: walkThroughCollectionView.frame.size.height)
        floawLayout.scrollDirection = .horizontal
        floawLayout.sideItemScale = 0.8
        floawLayout.sideItemAlpha = 1.0
        floawLayout.spacingMode = .fixed(spacing: 5.0)
        walkThroughCollectionView.collectionViewLayout = floawLayout
        
        walkThroughCollectionView.delegate = self
        walkThroughCollectionView.dataSource = self
       // icarruselView.type = .timeMachine
       // icarruselView.contentMode = .scaleAspectFit
       
//menuBtn(Any).delegate = self
        // Do any additional setup after loading the view.
    }
    
    //MARK:- UICollectionVIew Delegates and DataSource
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = walkThroughCollectionView.dequeueReusableCell(withReuseIdentifier: "walkThroughIdentifierß", for: indexPath) as! WalkThroughCollectionViewCell
        
        cell.lblTitle.text = "TItle - \(indexPath.row + 1)"
        cell.lblTitle.text = "Sub TItle - \(indexPath.row + 1)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("itm selected == \(indexPath.row)")
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let layout = self.walkThroughCollectionView.collectionViewLayout as! UPCarouselFlowLayout
        let pageSide = (layout.scrollDirection == .horizontal) ? self.pageSize.width : self.pageSize.height
        let offset = (layout.scrollDirection == .horizontal) ? scrollView.contentOffset.x : scrollView.contentOffset.y
        currentPage = Int(floor((offset - pageSide / 2) / pageSide) + 1)
    }
    
    fileprivate var currentPage: Int = 0 {
        didSet {
            print("page at centre = \(currentPage)")
        }
    }
    
    fileprivate var pageSize: CGSize {
        let layout = self.walkThroughCollectionView.collectionViewLayout as! UPCarouselFlowLayout
        var pageSize = layout.itemSize
        if layout.scrollDirection == .horizontal {
            pageSize.width += layout.minimumLineSpacing
        } else {
            pageSize.height += layout.minimumLineSpacing
        }
        return pageSize
    }
    
    
    
    @IBAction func menuBtn(_ sender: Any) {
        delegate?.toggleLeftPanel()
        print("menu presionado")
        
    }
  
    
    //Funciones del ciclo de VIDA del ViewController
    override func loadView() {
        super.loadView()
        print("Se activo la func loadView")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("Se activo la func viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("Se activo la func viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("Se activo la func viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDisappear")
    }
    //Recuerda dejar la de viewDidLoad y didReceiveMemoryWarning
    
    
    ///////////
    
    
    /*func numberOfItems(in carousel: iCarousel) -> Int {
        return imgCarrusel.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
       // let imageView: UIImageView
         var imageView: UIImageView!
        if view == nil {
            //imageView = view as! UIImageView
            
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 128))
            imageView.contentMode = .scaleAspectFit
        }else{
            imageView = view as? UIImageView
        }
        
        imageView.image = imgCarrusel[index]
        
        return imageView
    }*/

   
}

//extension UIViewController: iCarouselDelegate, iCarouselDataSource{
    
    
//}
