//
//  MainTableViewController.swift
//  mockup storyboard here
//
//  Created by Terry Wambolt on 11/17/16.
//  Copyright © 2016 Thrasher. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI

class MainTableViewController: UITableViewController {
    var fbDataSource : FUITableViewDataSource?
    var receiveRef: FIRDatabaseReference?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let q = receiveRef?.queryOrdered(byChild: "Rating")
        
        fbDataSource = FUITableViewDataSource(query:q!, view: tableView){
            (tableView: UITableView, indexPath: IndexPath, data: FIRDataSnapshot) -> UITableViewCell in
        
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath) as! MainTabelCell
            
            cell.data = data
            
            
            cell.nameLabel!.text = data.childSnapshot(forPath: "Name").value as? String
           
            let rating = data.childSnapshot(forPath: "Rating").value as! Int
            
            
            
            cell.ratingLabel!.text = "\(rating)"
            
            //print(data.childSnapshot(forPath: "Rating").value as? String)
            
            
            return cell
        
        }


        
        tableView.dataSource = fbDataSource
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "MapSegue"{
            let dest = segue.destination as! MapViewController
            let cell = sender as! MainTabelCell
            
            dest.data = cell.data
     }
    
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
