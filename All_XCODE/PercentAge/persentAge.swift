//
//  persentAge.swift
//  All_XCODE
//
//  Created by عبدالوهاب العنزي on 10/06/2020.
//  Copyright © 2020 Abdulwahab. All rights reserved.
//

import UIKit


// حساب النسبه المؤيه


class persentAge: UIViewController {
    @IBOutlet weak var billTotal: UITextField!
    @IBOutlet weak var percentage: UITextField!
    @IBOutlet weak var percentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func calucleatTotal(_ sender: Any)
    {
        let total = Double(billTotal.text!)!
        let cul = Double(percentage.text!)!
        
        var add = total * (cul / 100)
        
        percentLabel.text = ("Tip is \(add) $")
    }
    

}
