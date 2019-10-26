//
//  ViewController.swift
//  Ieatfood
//
//  Created by Grant Sundstrom on 10/25/19.
//  Copyright © 2019 Grant Sundstrom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtname: UITextField!
    

    @IBOutlet weak var txtpassword: UITextField!

  
    @IBAction func btnsave(_ sender: UIButton) {
        let defaults: UserDefaults = UserDefaults.standard
                   defaults.set(self.txtname.text, forKey: "Username")
                   defaults.set(self.txtpassword.text, forKey: "Password")
        defaults.synchronize()
        clear()
                   }
    override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
          let defaults: UserDefaults = UserDefaults.standard
                if defaults.string(forKey: "name") != nil{
                      txtname.text = defaults.string(forKey: "name")
                }
                if defaults.string(forKey: "password") != nil{
                    txtpassword.text = defaults.string(forKey: "email")
                }
}
func clear()
{
 txtpassword.resignFirstResponder()
        txtname.resignFirstResponder()
    }}

