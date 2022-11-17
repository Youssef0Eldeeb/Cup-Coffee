//
//  NearbyCafesViewController.swift
//  Cup Coffee
//
//  Created by Youssef Eldeeb on 02/11/2022.
//

import UIKit
import MapKit

class NearbyCafesViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        backBtn.layer.cornerRadius = backBtn.frame.size.width / 2
        backBtn.clipsToBounds = true
        
        let initialLocation = CLLocation(latitude: 30.025422, longitude: 31.015311)
        setStartingLocation(location: initialLocation, distance: 10)
    }
    
    private func setStartingLocation(location: CLLocation, distance: CLLocationDistance){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapView.setRegion(region, animated: true)
        let regionBoundary = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 30000, longitudinalMeters: 30000)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: regionBoundary), animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 500000)
        mapView.setCameraZoomRange(zoomRange, animated: true)
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func viewProductsBtn(_ sender: UIButton) {
        let vc = ReserveViewController.instantiate(name: .Reserve)
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false)
    }
    

}
