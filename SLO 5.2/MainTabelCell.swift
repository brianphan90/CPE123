//
//  MainTabelCell.swift
//  mockup storyboard here
//
//  Created by Terry Wambolt on 11/22/16.
//  Copyright © 2016 Thrasher. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabaseUI


class MainTabelCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var ref2: FIRDatabaseReference?
    
    var data: FIRDataSnapshot?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
