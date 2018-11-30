//
//  ShoppingSubcategoryViewController.swift
//  mockup storyboard here
//
//  Created by Terry Wambolt on 11/10/16.
//  Copyright © 2016 Thrasher. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI

class ShoppingSubcategoryViewController: UIViewController {

    let shoppingRef = FIRDatabase.database().reference().child("Shopping")
    
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
        
        if segue.identifier == "Men'sClothesSegue"{
         let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = shoppingRef.child("Men's Clothes")
        }
        
        if segue.identifier == "Women'sClothesSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = shoppingRef.child("Women's Clothing")
        }
       
        if segue.identifier == "GroceriesSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = shoppingRef.child("Groceries")
        }
        
        if segue.identifier == "TechSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = shoppingRef.child("Tech")
        }
        
        if segue.identifier == "AthleticSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = shoppingRef.child("Sport")
        }
        
        
        
    }
    

}
