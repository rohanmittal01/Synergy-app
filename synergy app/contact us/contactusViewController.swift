//
//  contactusViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 6/26/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit
import  Foundation
import MessageUI

class contactusViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        instagramDesign()
        facebookDesign()
        websiteDesign()
        emailDesign()
       }
    
    
    func instagramDesign()
    {
         instagram.layer.cornerRadius = instagram.frame.height/5
        
        let shadowRadius: CGFloat = 5
        instagram.layer.shadowRadius = shadowRadius
        instagram.layer.shadowOffset = CGSize(width: 0, height: 10)
        instagram.layer.shadowOpacity = 0.5
        
        // how strong to make the curling effect
        let curveAmount: CGFloat = 15
        let shadowPath = UIBezierPath()
        
        // the top left and right edges match our view, indented by the shadow radius
        shadowPath.move(to: CGPoint(x: shadowRadius, y: 0))
        shadowPath.addLine(to: CGPoint(x: instagram.frame.width - shadowRadius, y: 0))
        
        // the bottom-right edge of our shadow should overshoot by the size of our curve
        shadowPath.addLine(to: CGPoint(x: instagram.frame.width - shadowRadius, y: instagram.frame.height + curveAmount))
        
        // the bottom-left edge also overshoots by the size of our curve, but is added with a curve back up towards the view
        shadowPath.addCurve(to: CGPoint(x: shadowRadius, y: instagram.frame.height + curveAmount), controlPoint1: CGPoint(x: instagram.frame.width, y: instagram.frame.height - shadowRadius), controlPoint2: CGPoint(x: 0, y: instagram.frame.height - shadowRadius))
        instagram.layer.shadowPath = shadowPath.cgPath
    }
    
    func facebookDesign()
    {
          facebook.layer.cornerRadius = facebook.frame.height/5

       
        let width = facebook.frame.width
        let height = facebook.frame.height
        let shadowRadius: CGFloat = 5
        facebook.layer.shadowRadius = shadowRadius
        facebook.layer.shadowOffset = CGSize(width: 0, height: 10)
        facebook.layer.shadowOpacity = 0.5
        
        // how strong to make the curling effect
        let curveAmount: CGFloat = 20
        let shadowPath = UIBezierPath()
        
        // the top left and right edges match our view, indented by the shadow radius
        shadowPath.move(to: CGPoint(x: shadowRadius, y: 0))
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius, y: 0))
        
        // the bottom-right edge of our shadow should overshoot by the size of our curve
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius, y: height + curveAmount))
        
        // the bottom-left edge also overshoots by the size of our curve, but is added with a curve back up towards the view
        shadowPath.addCurve(to: CGPoint(x: shadowRadius, y: height + curveAmount), controlPoint1: CGPoint(x: width, y: height - shadowRadius), controlPoint2: CGPoint(x: 0, y: height - shadowRadius))
        facebook.layer.shadowPath = shadowPath.cgPath
        
    }
    
    func emailDesign()
    {
         email.layer.cornerRadius = email.frame.height/5
        
        let width = email.frame.width
        let height = email.frame.height
        let shadowRadius: CGFloat = 5
        email.layer.shadowRadius = shadowRadius
        email.layer.shadowOffset = CGSize(width: 0, height: 10)
        email.layer.shadowOpacity = 0.5
        
        // how strong to make the curling effect
        let curveAmount: CGFloat = 10
        let shadowPath = UIBezierPath()
        
        // the top left and right edges match our view, indented by the shadow radius
        shadowPath.move(to: CGPoint(x: shadowRadius, y: 0))
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius, y: 0))
        
        // the bottom-right edge of our shadow should overshoot by the size of our curve
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius, y: height + curveAmount))
        
        // the bottom-left edge also overshoots by the size of our curve, but is added with a curve back up towards the view
        shadowPath.addCurve(to: CGPoint(x: shadowRadius, y: height + curveAmount), controlPoint1: CGPoint(x: width, y: height - shadowRadius), controlPoint2: CGPoint(x: 0, y: height - shadowRadius))
        email.layer.shadowPath = shadowPath.cgPath
      
        
    }
    
    func websiteDesign()
    {
           website.layer.cornerRadius = website.frame.height/5
        
        
        let width = website.frame.width
        let height = website.frame.height
        let shadowRadius: CGFloat = 5
        website.layer.shadowRadius = shadowRadius
        website.layer.shadowOffset = CGSize(width: 0, height: 10)
        website.layer.shadowOpacity = 0.5
        
        // how strong to make the curling effect
        let curveAmount: CGFloat = 5
        let shadowPath = UIBezierPath()
        
        // the top left and right edges match our view, indented by the shadow radius
        shadowPath.move(to: CGPoint(x: shadowRadius, y: 0))
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius, y: 0))
        
        // the bottom-right edge of our shadow should overshoot by the size of our curve
        shadowPath.addLine(to: CGPoint(x: width - shadowRadius, y: height + curveAmount))
        
        // the bottom-left edge also overshoots by the size of our curve, but is added with a curve back up towards the view
        shadowPath.addCurve(to: CGPoint(x: shadowRadius, y: height + curveAmount), controlPoint1: CGPoint(x: width, y: height - shadowRadius), controlPoint2: CGPoint(x: 0, y: height - shadowRadius))
        website.layer.shadowPath = shadowPath.cgPath
    }
    
    
    
    
    
    @IBOutlet weak var instagram: UIView!
    @IBOutlet weak var facebook: UIView!
    @IBOutlet weak var email: UIView!
    @IBOutlet weak var website: UIView!
    
    @IBOutlet weak var fbimg: UIImageView!
    @IBOutlet weak var instaimg: UIImageView!
    
    @IBOutlet weak var gmailimg: UIImageView!
    
    @IBOutlet weak var websiteimg: UIImageView!
    
    @IBAction func emaiButtonPressed(_ sender: Any) {

        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true, completion: nil)
        }
        else{
            self.showSendMailAlert()
        }
    }

    
    func configuredMailComposeViewController() -> MFMailComposeViewController{
        
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["ietevit@vit.ac.in"])
        mailComposerVC.setSubject("Regarding Synergy'20")
        mailComposerVC.setMessageBody("Hey Guys, \n I am have something Important to tell you", isHTML: false)
        //   present(mailComposerVC, animated: true)
        return mailComposerVC
        
    }
    
    func showSendMailAlert()
    {
        let sendMailErrorAlert = UIAlertView(title: "Could not Send E-Mail ", message: "Your device must have an active email account. Pls go to the Mail app and log in. (or) Contact us at \"ietevit@vit.ac.in\"", delegate: self, cancelButtonTitle: "OK")
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }

    
    
 //////////////////////////////////////////
  
    
    @IBAction func fbButtonPressed(_ sender: Any) {
        
        let fbURLWeb: NSURL = NSURL(string: "https://www.facebook.com/ieteisf/")!
        let fbURLId: NSURL = NSURL(string: "fb://profile/293054244039042")!
        if(UIApplication.shared.canOpenURL(fbURLId as URL) )
        {
            UIApplication.shared.open(fbURLId as URL)
        }
        else{
            UIApplication.shared.open(fbURLWeb as URL)
        }
        
    }
    
    
///////////////////////////////////////////
    
    @IBAction func instaButtonPressed(_ sender: Any) {
        
        let instagramHooks = "instagram://user?username=johndoe"
        let instagramUrl = NSURL(string: instagramHooks)
        if UIApplication.shared.canOpenURL(instagramUrl! as URL) {
            UIApplication.shared.openURL(instagramUrl! as URL)
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.openURL(NSURL(string: "http://instagram.com/")! as URL)
        }
        
    }
    
    
    
    
    
    @IBAction func websiteButtonPressed(_ sender: Any) {
        
        if let url = URL(string: "https://synergyietevit.com/") {
            UIApplication.shared.open(url)
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
