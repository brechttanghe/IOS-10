//
//  ViewController.swift
//  Where Was I
//
//  Created by brecht tanghe on 2/10/16.
//  Copyright © 2016 brecht tanghe. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        print("test")
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else {
            print("Location not enabled")
            return
        }
        
        print("Location allowed")
        mapView.showsUserLocation = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SaveButtonClicked(_ sender: AnyObject) {
        let coord = locationManager.location?.coordinate
        
        if let lat = coord?.latitude{
            print("Lati: " + String(lat))
        }
        if let long = coord?.longitude{
            print("Long: " + String(long))
        }
    }

    


}

