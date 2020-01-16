//
//  ViewController.swift
//  Carthage_alarmofire_practice
//
//  Created by U.M. Hamidul islam on 1/15/20.
//  Copyright © 2020 Kader. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPress(_ sender: Any) {
        
        Alamofire.request("https://api.darksky.net/forecast/5c74c06e261c64b3a2f6e1abfb7fe85d/37.8267,-122.4233").responseJSON { response in
            print(response.request as Any)  // original URL request
            print(response.response as Any) // URL response
            print(response.result.value as Any)   // result of response serialization
            
            self.textview.text = response.description
        }
        
        
       /* AF.request("https://api.darksky.net/forecast/e03fba5c687227d65dd03e52b231c81d/37.8267,-122.4233").response{
            response in
            
            self.textView.text = response.debugDescription
            debugPrint(response)
        } */
        
        
    }
    
}


