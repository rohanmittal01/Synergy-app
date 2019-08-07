//
//  sidemenuTableViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 6/25/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit

class sidemenuTableViewController: UITableViewController {

    
    
    //@IBOutlet weak var image: UIImageView!
    @IBOutlet var menu: UITableView!
    

    
    
    
    var menuArray = ["Home","Events","Timeline","Sponsors","About Us","Contact Us","Live Chat"]
   
    // var menuArray = [//"Sponsors",//"FAQ"]
    
    var imgArray = [UIImage(named: "home"),
                    UIImage(named: "events"),
                    UIImage(named: "timeline"),
                    UIImage(named: "sponsors"),
                    UIImage(named: "about us"),
                    UIImage(named: "contact us"),
                    UIImage(named: "chat")
    
    ]
    
    
    
    var indexPos = 0

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menu.separatorColor = UIColor.init(red: 83/255, green: 104/255, blue: 120/255, alpha: 1)
        
        menu.delegate = self
        menu.dataSource = self
        
   menu.backgroundColor = UIColor.init(red: 30/255, green: 31/255, blue: 38/255, alpha: 1)
        
        menu.rowHeight = 56
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
      
        return menuArray.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! sidemenuTableViewCell
        
        cell.imgView.image = imgArray[indexPath.row]
        cell.myLabel.text = menuArray[indexPath.row]
        
        
        
        
//        cell.textLabel?.text=menuArray[indexPath.row]
//        cell.textLabel?.textColor = UIColor.white
//
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.init(red: 41/255, green: 55/255, blue: 84/255, alpha: 1)
        cell.selectedBackgroundView = backgroundView
        
       
        
       
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0
        {
            let imageView:UIImageView = UIImageView()
            imageView.clipsToBounds = true
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: "syn")!
            
            return imageView
            
        }
        
        return nil
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0 {
            let orientation = UIApplication.shared.statusBarOrientation
            
            if orientation.isLandscape {
                return view.frame.height
            } else {
                return view.frame.height / 3
            }
        }
        
        return UITableView.automaticDimension
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        
        indexPos=indexPath.row
        if(indexPos==0)
        {
            self.performSegue(withIdentifier: "1", sender: self)
        }
        else if(indexPos==1)
        {
            self.performSegue(withIdentifier: "2", sender: self)
        }
        else if(indexPos==2)
        {
            self.performSegue(withIdentifier: "3", sender: self)
        }
        else if(indexPos==3)
        {
            self.performSegue(withIdentifier: "4", sender: self)
        }
        else if(indexPos==4)
        {
            self.performSegue(withIdentifier: "5", sender: self)
        }
        else if(indexPos==5)
        {
            self.performSegue(withIdentifier: "6", sender: self)
        }
        else if(indexPos==6)
        {
            self.performSegue(withIdentifier: "7", sender: self)
        }
        
        
        
        
        
        

    }
    
    
   
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
