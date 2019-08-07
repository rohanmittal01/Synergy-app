//
//  homePageNewViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 6/30/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit

class homePageNewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
      

        layout()
        
      //  var timer : Timer
        _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(getCurrentTime), userInfo: nil, repeats: true)
        
        
        
        
        
    }
    
    
    
    func layout()
    {
        
        registerButton.layer.cornerRadius = registerButton.frame.height/5

        
        todayDay.layer.cornerRadius = todayDay.frame.height/2
        //todayMonth.layer.cornerRadius = todayMonth.frame.height/2
        //  todayYear.layer.cornerRadius = todayYear.frame.height/2
        hours.layer.cornerRadius = hours.frame.height/2
        minutes.layer.cornerRadius = minutes.frame.height/2
        seconds.layer.cornerRadius = seconds.frame.height/2

        secondsView.layer.cornerRadius = secondsView.frame.height/2

        minutesView.layer.cornerRadius = minutesView.frame.height/2

        hoursView.layer.cornerRadius = hoursView.frame.height/2

        daysView.layer.cornerRadius = daysView.frame.height/2
        // Do any additional setup after loading the view.
        self.daysView.layer.borderWidth = 1
        daysView.layer.borderColor = UIColor(red: 118/255, green: 214/255, blue: 1, alpha: 1).cgColor
        
        self.hoursView.layer.borderWidth = 1
        hoursView.layer.borderColor = UIColor(red: 118/255, green: 214/255, blue: 1, alpha: 1).cgColor
        
        self.minutesView.layer.borderWidth = 1
        minutesView.layer.borderColor = UIColor(red: 118/255, green: 214/255, blue: 1, alpha: 1).cgColor
        
        self.secondsView.layer.borderWidth = 1
        secondsView.layer.borderColor = UIColor(red: 118/255, green: 214/255, blue: 1, alpha: 1).cgColor
    }
    
    
 
    
    
    @IBOutlet weak var todayDay: UITextView!
    
    @IBOutlet weak var hours: UITextView!
    
    @IBOutlet weak var minutes: UITextView!
    
    @IBOutlet weak var seconds: UITextView!
    
    @IBOutlet weak var secondsView: UIView!
    
    @IBOutlet weak var minutesView: UIView!
    
    @IBOutlet weak var hoursView: UIView!
    
    @IBOutlet weak var daysView: UIView!
    
    
    
    @IBOutlet weak var registerButton: UIButton!
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        var vc = segue.destination as! registerViewController
//
//    }

    
    
    @objc func getCurrentTime()
    {
        let date = Date()
        let calendar = Calendar.current
        
        
        let components = calendar.dateComponents([.hour, .minute, .month, .year, .day, .second], from: date as Date)
        
        let currentDate = calendar.date(from: components)
        
        let userCalendar = Calendar.current
        
        // here we set the due date. When the timer is supposed to finish
        let competitionDate = NSDateComponents()
        competitionDate.year = 2020
        competitionDate.month = 02
        competitionDate.day = 23
        competitionDate.hour = 0
        competitionDate.minute = 0
        competitionDate.second = 0
        let competitionDay = userCalendar.date(from: competitionDate as DateComponents)!
        
        //here we change the seconds to hours,minutes and days
        let CompetitionDayDifference = calendar.dateComponents([.day, .hour, .minute, .year, .month, .second], from: currentDate!, to: competitionDay)
        
        
        //finally, here we set the variable to our remaining time
        let daysLeft = CompetitionDayDifference.day
        let hoursLeft = CompetitionDayDifference.hour
        let minutesLeft = CompetitionDayDifference.minute
   //     let monthsLeft = CompetitionDayDifference.month
     //   let yearsLeft = CompetitionDayDifference.year
        let secondsLeft = CompetitionDayDifference.second
        
        
        todayDay.text = "\(daysLeft ?? 0)\nDays"
     //   todayMonth.text = "\(monthsLeft ?? 0)\nMonths"
    //    todayYear.text = "\(yearsLeft ?? 0)\nYears"
        hours.text = "\(hoursLeft ?? 0)\nHours"
        minutes.text = "\(minutesLeft ?? 0)\nMinutes"
        seconds.text = "\(secondsLeft ?? 0)\nSeconds"
        
     //   print(CompetitionDayDifference)
        
        //   print("day:", daysLeft ?? "N/A", "hour:", hoursLeft ?? "N/A", "minute:", minutesLeft ?? "N/A")
        
        //
        
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
       
        todayDay.centerVertically()
        hours.centerVertically()
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



extension UITextView {
    
    func centerVertically() {
        let fittingSize = CGSize(width: bounds.width, height: CGFloat.greatestFiniteMagnitude)
        let size = sizeThatFits(fittingSize)
        let topOffset = (bounds.size.height - size.height * zoomScale) / 2
        let positiveTopOffset = max(1, topOffset)
        contentOffset.y = -positiveTopOffset
    }
    
}
