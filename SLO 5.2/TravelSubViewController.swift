//
//  TravelSubViewController.swift
//  mockup storyboard here
//
//  Created by Terry Wambolt on 11/10/16.
//  Copyright © 2016 Thrasher. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI

class TravelSubViewController: UIViewController {
  
    let travelRef = FIRDatabase.database().reference().child("Travel")
    
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
        
        if segue.identifier == "ParkSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = travelRef.child("Parks")
        }
        
        if segue.identifier == "PopularLocationsSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = travelRef.child("Popular Locations")
        }
        
        if segue.identifier == "TrailsSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = travelRef.child("Trails")
        }
        
        if segue.identifier == "BeachesSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = travelRef.child("Beaches")
        }
    }
    

}
