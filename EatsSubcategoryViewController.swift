//
//  EatsSubcategoryViewController.swift
//  mockup storyboard here
//
//  Created by Terry Wambolt on 11/10/16.
//  Copyright © 2016 Thrasher. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI

class EatsSubcategoryViewController: UIViewController {

    let eatsRef = FIRDatabase.database().reference().child("Eats")
    
    
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
        if segue.identifier == "BurgerSegue"{
            
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = eatsRef.child("Burgers")
        }
    
        if segue.identifier  == "EthnicSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = eatsRef.child("Ethnic")
        }
        
        if segue.identifier == "SweetsSegue"{
            let mainTabel = segue.destination as! MainTableViewController
            mainTabel.receiveRef = eatsRef.child("Sweets")
        }
        
        if segue.identifier == "PizzaSegue"{
            let mainTabel = segue.destination as! MainTableViewController
            mainTabel.receiveRef = eatsRef.child("Pizza")
        }
        
        if segue.identifier == "SeafoodSegue"{
            let mainTabel = segue.destination as! MainTableViewController
            mainTabel.receiveRef = eatsRef.child("Seafood")
        }
    }
}
