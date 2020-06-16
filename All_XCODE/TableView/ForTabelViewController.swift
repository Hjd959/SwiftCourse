//
//  ForTabelViewController.swift
//  All_XCODE
//
//  Created by عبدالوهاب العنزي on 12/06/2020.
//  Copyright © 2020 Abdulwahab. All rights reserved.
//

import UIKit

class ForTabelViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var term = ""
    override func viewDidLoad() {
        super.viewDidLoad()

       title = term
        //  var terms = ["String","Int","Boolen","Doubel","Array"]
        
        if term == "String"
        {
             textLabel.text = "It is a String , The Srting means word "
        }
        else if term == "Int"
        {
            textLabel.text = "It is a Integer , The integer means Numbers"
        }
        else if term == "Boolen"
        {
            textLabel.text = "It is a Boolen , The Boolen means True and Fales"
        }
        else if term == "Doubel"
        {
            textLabel.text = "It is a Dubel , The Doubel means numbers with . "
        }
        else if term == "Array"
        {
            textLabel.text = "It is an Array , The array means list"
        }
       
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
