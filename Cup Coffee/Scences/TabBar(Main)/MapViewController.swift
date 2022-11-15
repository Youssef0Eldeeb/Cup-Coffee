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
        
        let initialLocation = CLLocation(latitude: 30.0444, longitude: 31.2357)
        setStartingLocation(location: initialLocation, distance: 4000)
        
//        mapView.delegate = self
//        addPin()
    }
    private func setStartingLocation(location: CLLocation, distance: CLLocationDistance){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapView.setRegion(region, animated: true)
        let regionBoundary = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 30000, longitudinalMeters: 30000)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion: regionBoundary), animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 500000)
        mapView.setCameraZoomRange(zoomRange, animated: true)
    }
    
//    private func addPin(){
//        let myLocation = MKPointAnnotation()
//        myLocation.title = "Youssef Eldeeb"
//        myLocation.coordinate = CLLocationCoordinate2D(latitude: 30.78579, longitude: 30.80707)
//        mapView.addAnnotation(myLocation)
//    }
//
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//        let annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "myPin")
//
//
//        return annotationView
//    }
    
//    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
//        print("selecttttttttt\n \n")
//
//        let customView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
//        let label = UILabel(frame: CGRect(x: 10, y: 10, width: 50, height: 20))
//        label.text = "title"
//        label.textColor = .white
//        label.font = UIFont(name: "hello", size: CGFloat(20))
//        customView.addSubview(label)
//        customView.backgroundColor = .red
//        view.addSubview(customView)
//    }
    
    
    
}
