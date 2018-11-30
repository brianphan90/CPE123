//
//  MapViewController.swift
//  
//
//  Created by Terry Wambolt on 11/22/16.
//
//

import UIKit
import Firebase
import FirebaseDatabaseUI
import CoreLocation
import AddressBookUI
import MapKit

class MapViewController: UIViewController {
    
    
    

    func forwardGeocoding(address: String) {
        CLGeocoder().geocodeAddressString(address, completionHandler: { (placemarks, error) in
            if error != nil {
                print("error")
                return
            }
            if (placemarks?.count)! > 0 {
                let placemark = placemarks?[0]
                let location = placemark?.location
                let coordinate = location?.coordinate
                print("\nlat: \(coordinate!.latitude), long: \(coordinate!.longitude)")
        
                let locationPin = MKPointAnnotation()
                
                locationPin.coordinate = CLLocationCoordinate2D(latitude:coordinate!.latitude, longitude: coordinate!.longitude)
                
                locationPin.title = self.data?.childSnapshot(forPath: "Name").value as? String
                
                self.mapView.addAnnotation(locationPin)
                
                self.mapView.showAnnotations([locationPin], animated: false)
              
            }
        })
    
    }
    // entire chunk of code up here is for forward geocoding and extracting the longitude and latitude
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var takeMeButtonProperty: UIButton!
    
    var data: FIRDataSnapshot?
    
    
    @IBAction func takemethere(_ sender: AnyObject) { let targetURL = URL(string: addressLabel.text!)!
        UIApplication.shared.openURL(targetURL)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel!.text = data?.childSnapshot(forPath: "Name").value as? String
        
        let rating = data?.childSnapshot(forPath: "Rating").value as! Int
        ratingLabel!.text = "\(rating)"
        
        
        addressLabel!.text = data?.childSnapshot(forPath: "Address").value as? String
        let address = data?.childSnapshot(forPath: "Address").value as? String
        //this is used for the code below
       forwardGeocoding(address: address!)

        takeMeButtonProperty.layer.cornerRadius = 5
        takeMeButtonProperty.layer.borderWidth = 1
        takeMeButtonProperty.layer.borderColor = UIColor.white.cgColor
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
