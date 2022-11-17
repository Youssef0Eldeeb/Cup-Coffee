//
//  MapViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 09/11/2022.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate{
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = CLLocation(latitude: 30.025422, longitude: 31.015311)
        setStartingLocation(location: initialLocation, distance: 100)
        
    }
    private func setStartingLocation(location: CLLocation, distance: CLLocationDistance){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapView.setRegion(region, animated: true)
        let regionBoundary = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 30000, longitudinalMeters: 30000)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: regionBoundary), animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 500000)
        mapView.setCameraZoomRange(zoomRange, animated: true)
    }
    
    
}
