//
//  timelineViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 7/3/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit
import Firebase
class timelineViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var timelineTable: UITableView!
    @IBOutlet weak var dayDisplay: UILabel!
    
    @IBOutlet weak var dayView: UIView!
    
    var refName : DatabaseReference?
    
    var timelineList = [tableModel]()
    
    @IBOutlet weak var day1Outlet: UIButton!
    @IBOutlet weak var day2Outlet: UIButton!
    @IBOutlet weak var day3Outlet: UIButton!
    
    
    
    
    @IBAction func day1Button(_ sender: Any) {
    
       
        day1Outlet.setImage(UIImage(named: "day1 highlighted"), for: UIControl.State.normal)
        tableInitiating(day: "day 1")
        
        day2Outlet.setImage(UIImage(named: "day2"), for: UIControl.State.normal)
        
        day3Outlet.setImage(UIImage(named: "day3"), for: UIControl.State.normal)
        
        
        dayDisplay.text = "DAY 1"
        DispatchQueue.main.async {
            self.timelineTable.reloadData()
        }
    }
    
    
    @IBAction func day2Button(_ sender: Any) {
        
        day1Outlet.setImage(UIImage(named: "day1"), for: UIControl.State.normal)
        tableInitiating(day: "day 1")
        
        day2Outlet.setImage(UIImage(named: "day2 highlighted"), for: UIControl.State.normal)
        
        day3Outlet.setImage(UIImage(named: "day3"), for: UIControl.State.normal)
        
        
        
        tableInitiating(day: "day 2")
        dayDisplay.text = "DAY 2"
        DispatchQueue.main.async {
            
            self.timelineTable.reloadData()
        }
        
    }
    
    
    @IBAction func day3Button(_ sender: Any) {
        
        
        day1Outlet.setImage(UIImage(named: "day1"), for: UIControl.State.normal)
        tableInitiating(day: "day 1")
        
        day2Outlet.setImage(UIImage(named: "day2"), for: UIControl.State.normal)
        
        day3Outlet.setImage(UIImage(named: "day3 highlighted"), for: UIControl.State.normal)
        
        
        
        self.tableInitiating(day: "day3")
        dayDisplay.text = "DAY 3"
        DispatchQueue.main.async {
            
            self.timelineTable.reloadData()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        timelineTable.delegate = self
        timelineTable.dataSource = self
        
       
        day1Outlet.setImage(UIImage(named: "day1 highlighted"), for: UIControl.State.normal)
        
        tableInitiating(day: "day 1")
        dayDisplay.text = "DAY 1"
        // Do any additional setup after loading the view.
    }
    
    func tableInitiating(day: String)
    {
        refName = Database.database().reference().child(day)
        refName?.observe(DataEventType.value, with: {
            (snapshot) in
            
            if(snapshot.childrenCount>0){
                
                self.timelineList.removeAll()
                
                
                for cellContents in snapshot.children.allObjects as!  [DataSnapshot]
                {
                    let cellObject = cellContents.value as? [String: AnyObject]
                    let cellName = cellObject?["name"]
                    let cellTime = cellObject?["time"]
                    let cellImage = cellObject?["image"]
                    
                    let timeline = tableModel(name: cellName as! String?, time: cellTime as! String?, image: cellImage as! String?)
                    self.timelineList.append(timeline)
                }
                self.timelineTable.reloadData()
                
                //Mark: - Offline functionalities
                self.refName?.keepSynced(true)
            }
        })
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.timelineList.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    let cellSpacingHeight : CGFloat = 7
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = timelineTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! timelineTableViewCell
        
        let timeline: tableModel
        timeline = timelineList[indexPath.section]
        cell.nameLabel.text = timeline.name
        cell.timeLabel.text = timeline.time
        cell.cellImage.image = UIImage(named: timeline.image ?? "notFound")
        
        //  cell.layer.borderColor = CGColor(
        
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104
    }
    
    

    
    
 
}
    


