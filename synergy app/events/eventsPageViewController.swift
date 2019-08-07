 //
//  eventsPageViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 6/25/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit

class eventsPageViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var desc: UITextView!
    @IBOutlet weak var registerButton: UIButton!
    
    
    
        var imageArray = [UIImage(named: "machine_learning"),UIImage(named: "cyber_security"),
        UIImage(named: "robotics"),
    UIImage(named: "augmentedReality"),
    UIImage(named: "code_Olympia"),
    UIImage(named: "paper_presentation"),
    UIImage(named: "hackathon")
    ]
    
    var eventnames = ["MACHINE LEARNING", "CYBER SECURITY", "VOICE CONTROLLED ROBOTICS", "AUGMENTED REALITY", "CODE OLYMPIA", "PAPER PRESENTATION", "IETE HACKATHON"]
    
    var eventDesc = ["\"Machine Intelligence is the last invention that humanity will ever need to make.\" - Nick Bostrom. With the knowledge of Machine Learning, you have the ability to open doors of technology which we didn't even know existed. It is a revolution. Be a part of it by gaining knowledge about the world-changing technology at the Machine Learning Workshop brought to you by IETE-VIT this Synergy. The objective of this workshop is to emphasize the broad range of techniques for Machine Learning and Deep Learning using Open Source Python software. So what are you waiting for? The revolution starts this February. #Awakentheinspiration #Synergy'19. \n\nEvent Date:  \nEvent Timing: \nNumber od Days: \nREG FEE: 900/- per participant",
                     
    "Have you ever wondered how our information in icloud/Google drive stays protected? Has is ever struck to you, how valuable information is? Synergy'19's Cybersecurity workshop is the session you should register. Safety of Information is the key in IT world. The 2-day workshop Starts with key issues plugging the information security world, penetration testing to wireless hacking, SQL injection. Field Experts from Redback IT Solutions PVT LTD will be taking the session from scratch, attending to every participant and taking them through the fun-filled learning, and a certificate to boost your resume! To all those enthusiasts, out there, don't lose an opportunity like this.",
                     
    " Have you ever seen a robot which responds to your voice? Want to make the same? Then let's design and build a voice controlled bot using speech recognition. And what's more, it'll be operated by an android application using Bluetooth communication made by you. How wonderful it would be to make a robot that follows your commands. So join us this Synergy at the Voice Controlled Robotics Workshop. P.S. Hardware and Software Kits are on us! #Awakentheinspiration #Synergy'19." ,
                    
    "Haven't you always been fascinated by the virtual world? With the virtual science being applied at almost every field of entertainment now, aren't you even a teensy bit curious about how these things actually do what they do? How they create a world in another world? All your queries will be answered this SYNERGY in the Augmented Reality Workshop. You will learn how to create an enhanced version of reality using technology to overlay digital information on the real world. Hold interactive worlds in the palm of your hand. Come join us in Synergy'19. #Awakentheinspiration #Synergy'19.",
       
    "'Programming is like any other sport. You might know the rules but you have to play to learn.' Mark Zuckerberg was absolutely right. Programmers do need a platform to practice and flaunt their incredible coding skills. As the exciting season of IETE-ISF’s very own technical symposium arrives, the call for skillful coders gets louder. Get ready on (date) for the twelve hour long coding challenge in association with Hackerank. This opportunity is not only for experienced techies but it is also the golden chance for beginners to prove their grip on competitive programming and win cash prizes worth Rs. 9000. So what are you guys waiting for? Participate in this eclectic mixture of distinctive problems and suitable solutions to justify your take on the coding world.",
       
    "How determined are you in pitching your research on a platform? How interested are you in getting an expert review in your ideas? If yes, then we are back with Paper Presentation session with IETE-ISF's Synergy'19. Synergy'19's Paper Presentation is the kind of platform where you showcase all your innovative ideas and dedicated research in front of highly experienced panel of judges. In case your research is in the fields of computer-science, electronic/electrical fields, then it's your platform, let out the speaker in you by preparing a presentation to voice your ideas/research and grab exciting prizes. Hence register without a second thought because, for every opportunity we turn down, we are losing a door towards success. If your idea gets selected, it will be published in:",
       
    "AccessDenied is a 30-hour hackathon organized by IETE-ISF for innovators across the country. It is an great opportunity to put your technical skills to use. Apply your textbook knowledge to real life ideas and stand a chance to win exclusive goodies, schwags, certificates and cash prizes upto Rs. 20,000. Mark your calendars for 16th and 17th March 2019. "

    ]
    
    
    
    
    var indexPos = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

     //   desc.font=UIFont(name: "Montserrat", size: 17.0)
        
        registerButton.layer.cornerRadius = registerButton.frame.height/4
        
     //   descDesign()
     //   eventName()
        // Do any additional setup after loading the view.
    }
    
    
    func eventName()
    {
        name.text = eventnames[indexPos]
    }
    
    
    func descDesign()
    {
        let borderColor : UIColor = UIColor(red: 0, green: 150/255, blue: 1, alpha: 1.0)
        desc.layer.borderWidth = 4
        desc.layer.borderColor = borderColor.cgColor
        desc.layer.cornerRadius = 5.0
        
        //desc.layer.borderWidth = 2
    }
    
    
    
    
    
 }
 
 
 
 extension eventsPageViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cells", for: indexPath) as? DataCollectionViewCell
        
        cell?.img.image = imageArray[indexPath.row]
        indexPos=indexPath.row
//        print("indexPath=\(indexPath.row)  indexPos=\(indexPos)")
        name?.text = eventnames[indexPath.row]
        desc?.text = eventDesc[indexPath.row]

        return cell!
    }
    
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return imageArray.count
        }
    }

 
 extension eventsPageViewController: UICollectionViewDelegateFlowLayout{
    
  
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = UIScreen.main.bounds
        return CGSize(width: size.width, height: size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:0 ,left:0, bottom:0, right:0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
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


