//
//  GoingOutViewController.swift
//  BirdGang
//
//  Created by Chris Richardson on 12/3/18.
//  Copyright © 2018 Chris Richardson. All rights reserved.
//

import UIKit
import MapKit

class GoingOutViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set initial location to Publico
        let initialLocation = CLLocation(latitude: 33.784824, longitude: -84.384605)
        let labelLocation = CLLocationCoordinate2D(latitude: 33.784824, longitude: -84.384605)
        centerMapOnLocation(location: initialLocation)
        let annotation = MKPointAnnotation()
        annotation.coordinate = labelLocation
        annotation.title = "Publico"
        annotation.subtitle = "Atlanta"
        mapView.addAnnotation(annotation)
    }

    // map size
    let regionRadius: CLLocationDistance = 1000
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }

}
