//
//  sponsorsViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 6/26/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit

class sponsorsViewController: UIViewController {

    

    var imageArray = [UIImage]()
    var imageArray2 = [UIImage]()
    
    
    
    
    @IBOutlet weak var shadow1: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var othersponsors: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sponsors()
        othersponsorsfunc()
        
      //  scrollView.layer.cornerRadius = scrollView.frame.height/5
    }
    
    
 
    
    func sponsors(){
        imageArray = [#imageLiteral(resourceName: "foxmula"), #imageLiteral(resourceName: "drunkenmonkey"), #imageLiteral(resourceName: "markytics"),#imageLiteral(resourceName: "jetbrains"), #imageLiteral(resourceName: "hackerrank"), #imageLiteral(resourceName: "hasura"), #imageLiteral(resourceName: "digitalocean") ,#imageLiteral(resourceName: "bugsee") ,#imageLiteral(resourceName: "hackerearth"), #imageLiteral(resourceName: "docker"), #imageLiteral(resourceName: "balsamiq") ,#imageLiteral(resourceName: "github") ,#imageLiteral(resourceName: "mlh") ,#imageLiteral(resourceName: "estimote") ,#imageLiteral(resourceName: "kothari"), #imageLiteral(resourceName: "redback"), #imageLiteral(resourceName: "sketch"), #imageLiteral(resourceName: "nisna technologies"), #imageLiteral(resourceName: "zebronics")]
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image=imageArray[i] //uiimage(named : imageArray[i])
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame=CGRect(x: xPosition, y:0, width:self.scrollView.frame.width, height:self.scrollView.frame.height)
            
            scrollView.contentSize.width = scrollView.frame.width * CGFloat(i+1)
            scrollView.addSubview(imageView)
            
            
            
            
            
        }
        
    }
    
    func othersponsorsfunc()
    {
        imageArray2 =  [#imageLiteral(resourceName: "codepark"), #imageLiteral(resourceName: "xyz"), #imageLiteral(resourceName: "the_fine_arts_club"), #imageLiteral(resourceName: "yb"), #imageLiteral(resourceName: "eride")]
        
        for i in 0..<imageArray2.count{
            let imageView = UIImageView()
            imageView.image=imageArray2[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame=CGRect(x: xPosition, y:0, width:self.othersponsors.frame.width, height:self.othersponsors.frame.height)
            
            othersponsors.contentSize.width = othersponsors.frame.width * CGFloat(i+1)
            othersponsors.addSubview(imageView)
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
