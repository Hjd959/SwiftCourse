//
//  Labels.swift
//  All_XCODE
//
//  Created by عبدالوهاب العنزي on 31/05/2020.
//  Copyright © 2020 Abdulwahab. All rights reserved.
//

import UIKit

class Labels: UIViewController {

   
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // view Coloer
        
        view.backgroundColor = .gray
        
        
        // Label text
        Label.text = "Abdulwahab"
        
        // text Color
        Label.textColor = .red
        
        // Label background Color
        Label.backgroundColor = .blue
        
        // text Alignment
        Label.textAlignment = .center
        

    }
    
    



}
