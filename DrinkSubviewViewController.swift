//
//  DrinkSubviewViewController.swift
//  mockup storyboard here
//
//  Created by Terry Wambolt on 11/10/16.
//  Copyright © 2016 Thrasher. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI

class DrinkSubviewViewController: UIViewController {
    
    let drinksRef = FIRDatabase.database().reference().child("Drinks")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if segue.identifier == "CoffeeSegue"{
         let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = drinksRef.child("Coffee")
        }
        
        if segue.identifier == "BarsSegue"{
         let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = drinksRef.child("Alcoholic")
        }
        
        if segue.identifier == "SmoothiesSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = drinksRef.child("Smoothies")
        }
        
        if segue.identifier == "BobaSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = drinksRef.child("Boba")
        }
        
        if segue.identifier == "TeaSegue"{
         let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = drinksRef.child("Tea")
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
