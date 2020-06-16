//
//  CodeTableViewController.swift
//  All_XCODE
//
//  Created by عبدالوهاب العنزي on 12/06/2020.
//  Copyright © 2020 Abdulwahab. All rights reserved.
//
//
import UIKit

class CodeTableViewController: UITableViewController {

    var terms = ["String","Int","Boolen","Doubel","Array"]
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

   
// How many Rows ?
    //
    // عدد الصطور
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return terms.count
    }

    // What goes in each cell
    // اسماء الخلايا
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()

        cell.textLabel?.text = terms[indexPath.row]
        // Configure the cell...

        return cell
    }
    
    // هذي معانه ينقل لك الصفحه بمعنى اذا ضغطت على خليه ينقل لك الى فيو كنترولر جديده
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let select = terms[indexPath.row]
        
       performSegue(withIdentifier: "goToDeifintionsCode", sender: select)
    }
    
    // هذي تسوي لك ارتباط مع الفيوكنترولار الثاني وتاخذ معلومات من الفيو هذا وتوديه الى الفيو الثاني
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let codeVC = segue.destination as! ForTabelViewController
        let selcted = sender as! String
        codeVC.term = selcted
    }

   
}
