//
//  count.swift
//  All_XCODE
//
//  Created by عبدالوهاب العنزي on 31/05/2020.
//  Copyright © 2020 Abdulwahab. All rights reserved.
//


// ملخص هذا الكود يحسب لك عداد

import UIKit

class count: UIViewController {

    @IBOutlet weak var Label: UILabel!
      var plus = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
  
    
    @IBAction func push(_ sender: Any)
    {
        plus = plus + 1
        
        if plus == 10 {
            Label.text = String(0)
        }
     
        
        Label.text = String(plus)
        
       
    }
    

}
