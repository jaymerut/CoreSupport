//
//  MapViewController.swift
//  CoreSupport
//
//  Created by Jayme Rutkoski on 7/14/20.
//  Copyright © 2020 coresupport. All rights reserved.
//

import UIKit
import SnapKit
import MapKit

class MapViewController: BaseViewController, MKMapViewDelegate {
    
    
    // MARK: - Variables
    let initialLocation = CLLocation(latitude: 34.544385, longitude: -112.471750)
    let annotation = MKPointAnnotation()
    
    var mapView = MKMapView(frame: CGRect.zero)
    
    var buttonDirections = UIBarButtonItem(title: "Directions", style: .plain, target: self, action: #selector(buttonClicked(sender:)))
    
    // MARK: - Initialization
    private func customInitMapViewController() {
        
    }
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        
        customInitMapViewController()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitMapViewController()
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        customInitMapViewController()
    }
    
    
    
    // MARK: - UIViewController Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coordinate = CLLocationCoordinate2D(latitude: 34.544385, longitude: -112.471750)
        let mapCamera = MKMapCamera(lookingAtCenter: coordinate, fromEyeCoordinate: coordinate, eyeAltitude: 1000)
        mapView.delegate = self
        mapView.centerToLocation(initialLocation)
        mapView.setCamera(mapCamera, animated: true)
        
        annotation.title = "Core Support Inc"
        annotation.coordinate = coordinate
        mapView.addAnnotation(annotation)
        
        // Setup
        setupMapViewController()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.setRightBarButton(buttonDirections, animated: true)
        self.navigationItem.rightBarButtonItem?.target = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    
    // MARK: - Private API
    private func setupMapViewController() {
        
        // Map View
        mapView.layer.cornerRadius = 10
        imageViewBackground.addSubview(mapView)
        mapView.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(self.view)
        }
        
    }
    
    private func directionsURL() -> URL {
        var location = ""
        
        // Address
        location.append("202 N Granite St, Suite 207")
        
        // City
        location.append(", Prescott")
        
        // State
        location.append(", Arizona")
        
        // Zip
        location.append(" 86301")
        
        let locationEncoded = location.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        
        let path = "http://maps.apple.com/maps?q=\(locationEncoded ?? "")"
        
        let url = URL(string: path)
        
        return url!
    }
    
    @objc func buttonClicked(sender: UIBarButtonItem) {
        UIApplication.shared.open(directionsURL(), options: [:], completionHandler: nil)
    }
    
    
    // MARK: - Public API
    
    
    
}

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
