//
//  carouselViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 6/28/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit

class carouselViewController: UIViewController {

    

  //  var imageArray = [UIImage]()
   
 let    imageArray = [#imageLiteral(resourceName: "foxmula"), #imageLiteral(resourceName: "drunkenmonkey"), #imageLiteral(resourceName: "markytics"),#imageLiteral(resourceName: "jetbrains"), #imageLiteral(resourceName: "hackerrank"), #imageLiteral(resourceName: "hasura"), #imageLiteral(resourceName: "digitalocean") ,#imageLiteral(resourceName: "bugsee") ,#imageLiteral(resourceName: "hackerearth"), #imageLiteral(resourceName: "docker"), #imageLiteral(resourceName: "balsamiq") ,#imageLiteral(resourceName: "github") ,#imageLiteral(resourceName: "mlh") ,#imageLiteral(resourceName: "estimote") ,#imageLiteral(resourceName: "kothari"), #imageLiteral(resourceName: "redback"), #imageLiteral(resourceName: "sketch"), #imageLiteral(resourceName: "nisna technologies"), #imageLiteral(resourceName: "zebronics")]
    let strURlToOpen = ["https://foxmula.com/", "https://www.thedrunkenmonkey.in/", "https://www.markytics.com/", "https://jetbrains.com/", "https://www.hackerrank.com/", "https://hasura.io/", "https://www.digitalocean.com/" , "https://bugsee.com/", "https://hackerearth.com/", "https://www.docker.com/" , "https://www.balsamiq.com/", "https://www.github.com/", "https://mlh.io", "https://www.estimote.com/", "https://kotharihosiery.com/", "https://www.redback.in/", "https://www.sketch.com/", "https://nisnatechnologies.com/", "https://zebronics.com"]

   // let imageArray = [UIImage(named: "foxmula"), UIImage(named: "drunkenmonkey"), UIImage(named: "markytics"), UIImage(named: "jetbrains"), UIImage(named: "hackerrank"), UIImage(named: "hasura"), UIImage(named: "digitalocean"), UIImage(named: "bugsee")]
    
    @IBOutlet weak var iCarouselView: iCarousel!
    
    @IBOutlet weak var titleSponsor: UIView!
    
  
 
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
     
           
            titleSponsorFunc()
            //image Tap Feature
    
            
            
            
            
     
        iCarouselView.type = .coverFlow
        iCarouselView.contentMode =  .scaleAspectFit
        iCarouselView.isPagingEnabled = true
            
            
            let shadowSize: CGFloat = 20
            let shadowDistance: CGFloat = 20
            let contactRect = CGRect(x: -shadowSize, y: iCarouselView.frame.height - (shadowSize * 0.4) + shadowDistance, width: iCarouselView.frame.width + shadowSize * 2, height: shadowSize)
            
            
            
            
            iCarouselView.layer.shadowPath = UIBezierPath(ovalIn: contactRect).cgPath
                iCarouselView.layer.shadowRadius = 5
            iCarouselView.layer.shadowOpacity = 0.8


        // Do any additional setup after loading the view.
    }
    
    
  
    
   func titleSponsorFunc()
    {
    let shadowRadius: CGFloat = 5
    titleSponsor.layer.shadowRadius = shadowRadius
    titleSponsor.layer.shadowOffset = CGSize(width: 0, height: 10)
    titleSponsor.layer.shadowOpacity = 0.5
    
    // how strong to make the curling effect
    let curveAmount: CGFloat = 20
    let shadowPath = UIBezierPath()
    
    // the top left and right edges match our view, indented by the shadow radius
    shadowPath.move(to: CGPoint(x: shadowRadius, y: 0))
    shadowPath.addLine(to: CGPoint(x: titleSponsor.frame.width - shadowRadius, y: 0))
    
    // the bottom-right edge of our shadow should overshoot by the size of our curve
    shadowPath.addLine(to: CGPoint(x: titleSponsor.frame.width - shadowRadius, y: titleSponsor.frame.height + curveAmount))
    
    // the bottom-left edge also overshoots by the size of our curve, but is added with a curve back up towards the view
    shadowPath.addCurve(to: CGPoint(x: shadowRadius, y: titleSponsor.frame.height + curveAmount), controlPoint1: CGPoint(x: titleSponsor.frame.width, y: titleSponsor.frame.height - shadowRadius), controlPoint2: CGPoint(x: 0, y: titleSponsor.frame.height - shadowRadius))
    titleSponsor.layer.shadowPath = shadowPath.cgPath
    
    }
    
    

}

extension carouselViewController : iCarouselDelegate, iCarouselDataSource{
    
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        
        return imageArray.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        
       // imageArray = [#imageLiteral(resourceName: "foxmula"), #imageLiteral(resourceName: "drunkenmonkey"), #imageLiteral(resourceName: "markytics"),#imageLiteral(resourceName: "jetbrains"), #imageLiteral(resourceName: "hackerrank"), #imageLiteral(resourceName: "hasura"), #imageLiteral(resourceName: "digitalocean") ,#imageLiteral(resourceName: "bugsee") ,#imageLiteral(resourceName: "hackerearth"), #imageLiteral(resourceName: "docker"), #imageLiteral(resourceName: "balsamiq") ,#imageLiteral(resourceName: "github") ,#imageLiteral(resourceName: "mlh") ,#imageLiteral(resourceName: "estimote") ,#imageLiteral(resourceName: "kothari"), #imageLiteral(resourceName: "redback"), #imageLiteral(resourceName: "sketch"), #imageLiteral(resourceName: "nisna technologies"), #imageLiteral(resourceName: "zebronics")]

        
        
        let imageView = UIImageView()
        
    
     
            
        imageView.frame=CGRect(x: 0, y:0, width:iCarouselView.frame.width, height:iCarouselView.frame.height)
            
            imageView.contentMode = .scaleAspectFit
    
        imageView.image = imageArray[index]
        
        
           //image Tap Feature
     /*   iCarouselView.isUserInteractionEnabled = true
        iCarouselView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTap)))
      */
        
        
        
        
        imageView.backgroundColor = .init(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
        imageView.layer.shadowPath = UIBezierPath(rect: iCarouselView.bounds).cgPath
        imageView.layer.shadowRadius = 8
        imageView.layer.shadowOffset = .zero
        imageView.layer.shadowOpacity = 1
        

        
        return imageView
        
    }
   
   
    
    func carousel(_ carousel: iCarousel, didSelectItemAt index: Int) {
        if let url = URL(string: strURlToOpen[index]) {
            if #available(iOS 10, *){
                UIApplication.shared.open(url)
            }else{
                UIApplication.shared.openURL(url)
            }
            
        }
        
    }
    
    
    
}
