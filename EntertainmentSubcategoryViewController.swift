//
//  EntertainmentSubcategoryViewController.swift
//  mockup storyboard here
//
//  Created by Terry Wambolt on 11/10/16.
//  Copyright © 2016 Thrasher. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI

class EntertainmentSubcategoryViewController: UIViewController {
    
    let entertainmentRef = FIRDatabase.database().reference().child("Entertainment")
    
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
        if segue.identifier == "TheatersSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = entertainmentRef.child("Theaters")
        }
        
        if segue.identifier == "LivemusicSegue"{
            let mainTable = segue.destination as! MainTableViewController
            mainTable.receiveRef = entertainmentRef.child("Live Music")
        }
        
        if segue.identifier == "ArcadeSegue"{
            let mainTabel = segue.destination as! MainTableViewController
            mainTabel.receiveRef = entertainmentRef.child("Arcade")
        }
        
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
