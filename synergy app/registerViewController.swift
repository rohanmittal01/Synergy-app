//
//  registerViewController.swift
//  synergy app
//
//  Created by Vandana Mittal on 7/1/19.
//  Copyright © 2019 Rohan Mittal. All rights reserved.
//

import UIKit
import WebKit

class registerViewController: UIViewController {

      let url : String = "https://synergyietevit.com/"
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        display()
        // Do any additional setup after loading the view.
    }
    

    
    func display()
    {
        let url2 = URL(string: url)
        let urlRequest = URLRequest(url: url2!)
        webView.load(urlRequest)
    }

    override var prefersStatusBarHidden: Bool
        {
        return true
    }
    
    //Mark: InternetConnection
    override func viewDidAppear(_ animated: Bool) {
        if( checkInternet.Connection())
        {
            
        }
        else{
            self.Alert(Message: "Your device is not connected to the Internet.")
        }
    }
    
    func Alert(Message: String)
    {
        let alert=UIAlertController(title: "Alert", message: Message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion:nil)
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
