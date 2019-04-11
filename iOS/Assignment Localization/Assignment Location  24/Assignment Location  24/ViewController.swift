//
//  ViewController.swift
//  Assignment Location  24
//
//  Created by Anindya Guha on 06/04/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapKit: MKMapView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        mapKit.register(MKMarkerAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        let firstPointCoordinate = CLLocationCoordinate2D(latitude: 22.566490, longitude: 88.341179)
        let firstPointAnnotation = CustomizedAnnotationClass(coordinate: firstPointCoordinate, title: "Stadium", subtitle: "Eden Gardens, Kolkata")
        let secondPointCoordinate = CLLocationCoordinate2D(latitude: 22.565920, longitude: 88.354100)
        let secondPointAnnotation = CustomizedAnnotationClass(coordinate: secondPointCoordinate, title: "Maidan", subtitle: "Heart Of the City, Kolkata")
        let thirdPointCoordinate = CLLocationCoordinate2D(latitude: 22.449240, longitude: 88.371630)
        let thirdPointAnnotation = CustomizedAnnotationClass(coordinate: thirdPointCoordinate, title: "Mandir", subtitle: "Dakhineshwar Mandir, Kolkata")
        let fourthPointCoordinate = CLLocationCoordinate2D(latitude: 22.500118, longitude: 88.293321)
        let fourthPointAnnotation = CustomizedAnnotationClass(coordinate: fourthPointCoordinate, title: "Flying Club", subtitle: "Behala Flying Club, Kolkata")
        let fifthPointCoordinate = CLLocationCoordinate2D(latitude: 22.487913, longitude: 88.321301)
        let fifthPointAnnotation = CustomizedAnnotationClass(coordinate: fifthPointCoordinate, title: "Ghar", subtitle: "Home, Kolkata")
        mapKit.addAnnotation(firstPointAnnotation)
        mapKit.addAnnotation(secondPointAnnotation)
        mapKit.addAnnotation(thirdPointAnnotation)
        mapKit.addAnnotation(fourthPointAnnotation)
        mapKit.addAnnotation(fifthPointAnnotation)
        // Do any additional setup after loading the view.

        let firstCircle = MKCircle(center: firstPointCoordinate, radius: 10 as CLLocationDistance)
        self.mapKit.addOverlay(firstCircle)
        let secondCircle = MKCircle(center: fifthPointCoordinate, radius: 10 as CLLocationDistance)
        self.mapKit.addOverlay(secondCircle)
        
        let sourcePoint = MKPlacemark(coordinate: firstPointCoordinate)
        let destinationPoint = MKPlacemark(coordinate: fifthPointCoordinate)
        let wayPath = MKDirections.Request()
        
        wayPath.source = MKMapItem(placemark: sourcePoint)
        wayPath.destination = MKMapItem(placemark: destinationPoint)
        wayPath.transportType = .automobile
        let directions = MKDirections(request: wayPath)
        directions.calculate{(response,error ) in
            guard let directionResponse = response else{
                if let error = error {
                    print("we have error in getting direction \(error.localizedDescription)")
                }
                return
            }
            self.mapKit.delegate = self
            let route = directionResponse.routes[0]
            self.mapKit.addOverlay(route.polyline, level: .aboveRoads)
            let rect =  route.polyline.boundingMapRect
            self.mapKit.setRegion(MKCoordinateRegion.init(rect), animated: true)
        }
    }
}

extension ViewController : MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if let customizedAnnotation = mapKit.dequeueReusableAnnotationView(withIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier) as? MKMarkerAnnotationView{
            customizedAnnotation.animatesWhenAdded = true
            customizedAnnotation.canShowCallout = true
            customizedAnnotation.rightCalloutAccessoryView = UIButton(type: .infoDark)
            customizedAnnotation.titleVisibility = .adaptive
            customizedAnnotation.subtitleVisibility = .adaptive
            return customizedAnnotation
        }
        return MKAnnotationView()
    }
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        
        if  overlay is  MKPolyline{
            
            let polylineRenderer = MKPolylineRenderer.init(overlay: overlay)
            polylineRenderer.strokeColor = UIColor.blue
            polylineRenderer.lineWidth = 4.0
            return polylineRenderer
        }
        else if overlay is MKCircle {
            let  region = MKCircleRenderer.init(overlay: overlay)
            region.strokeColor = UIColor.blue
            region.lineWidth = 4.0
            region.lineWidth = 2.0
            
            return region
        }
        else{
            return MKPolylineRenderer()
        }
    }
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        if control == view.rightCalloutAccessoryView {
            if let locationDescription = view.annotation?.title! {
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyBoard.instantiateViewController(withIdentifier: "DescriptionImageViewController") as! DescriptionImageViewController
                self.navigationController?.pushViewController(controller, animated: true)
            }
        }
    }
}

final class CustomizedAnnotationClass: NSObject,MKAnnotation {
    var  subtitle: String?
    var coordinate: CLLocationCoordinate2D
    var title: String?
    init(coordinate:CLLocationCoordinate2D,title:String,subtitle:String){
        self.subtitle = subtitle
        self.coordinate = coordinate
        self.title = title
    }
    var region: MKCoordinateRegion{
        let areaRegion = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        return MKCoordinateRegion(center: coordinate, span: areaRegion)
    }
}

