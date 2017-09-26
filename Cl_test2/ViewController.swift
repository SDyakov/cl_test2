//
//  ViewController.swift
//  Cl_test2
//
//  Created by Admin on 25.09.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate , CLLocationManagerDelegate{

    let location = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let myLocation = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region = MKCoordinateRegionMake(myLocation, span)
        mapView.setRegion(region, animated: true)
        self.mapView.showsUserLocation = true
    }
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
 
       // mapView.delegate = self
        location.delegate = self
        location.desiredAccuracy = kCLLocationAccuracyBest
        location.requestWhenInUseAuthorization()
        location.startUpdatingLocation()
        
       /* let coordinate2 = CLLocationCoordinate2DMake(54.15, 45.15)
        let coordonate = CLLocationCoordinate2DMake(54.18, 45.18)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        let region = MKCoordinateRegionMake(coordonate, span)
        
        mapView.setRegion(region, animated: true)
        
        let annot = MKPointAnnotation()
        annot.coordinate = coordinate2
        annot.title = "Saransk"
        annot.subtitle = "Capital of Mordor"
        mapView.addAnnotation(annot)
        */
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

