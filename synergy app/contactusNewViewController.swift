//
//  contactusNewViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 8/2/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit

class contactusNewViewController: UIViewController, UITextFieldDelegate {

 
    @IBOutlet weak var sendButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        sendButton.layer.cornerRadius = sendButton.frame.height/4
        // Do any additional setup after loading the view.
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        return true
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
