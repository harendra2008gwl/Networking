//
//  ViewController.swift
//  Networking
//
//  Created by Harendra Sharma on 11/02/19.
//  Copyright © 2019 Harendra Sharma. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        MakeRequest()

    
}

    
    func MakeRequest()  {
        SVProgressHUD.show(withStatus: "Loading..")
        
        
        
        AF.request("https://reqres.in/api/users").responseJSON { response in
//            print("Request: \(String(describing: response.request))")   // original url request
//            print("Response: \(String(describing: response.response))") // http url response
//            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
            
            SVProgressHUD.dismiss()
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
