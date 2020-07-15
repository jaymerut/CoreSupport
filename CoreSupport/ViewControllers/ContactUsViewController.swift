//
//  ContactUsViewController.swift
//  CoreSupport
//
//  Created by Jayme Rutkoski on 7/6/20.
//  Copyright © 2020 coresupport. All rights reserved.
//

import UIKit
import SnapKit
import MapKit


class ContactUsViewController: BaseViewController, MKMapViewDelegate {
    
    
    // MARK: - Variables
    var viewInfo = UIView(frame: CGRect.zero)
    var viewContact = UIView(frame: CGRect.zero)
    var viewHours = UIView(frame: CGRect.zero)
    
    var mapView = MKMapView(frame: CGRect.zero)
    
    var labelInfoTitle = UILabel(frame: CGRect.zero)
    var labelInfoSection = UILabel(frame:CGRect.zero)
    var labelContactTitle = UILabel(frame: CGRect.zero)
    var labelContactSection = UILabel(frame:CGRect.zero)
    var labelHoursTitle = UILabel(frame: CGRect.zero)
    var labelHoursSection = UILabel(frame:CGRect.zero)
    
    let initialLocation = CLLocation(latitude: 34.544385, longitude: -112.471750)
    let annotation = MKPointAnnotation()
    
    // MARK: - Initialization
    private func customInitContactUsViewController() {
        
    }
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        
        customInitContactUsViewController()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitContactUsViewController()
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        customInitContactUsViewController()
    }
    
    // MARK: - UIViewController Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Contact Us"
        
        let coordinate = CLLocationCoordinate2D(latitude: 34.544385, longitude: -112.471750)
        let mapCamera = MKMapCamera(lookingAtCenter: coordinate, fromEyeCoordinate: coordinate, eyeAltitude: 1000)
        mapView.delegate = self
        mapView.centerToLocation(initialLocation)
        mapView.setCamera(mapCamera, animated: true)
        
        annotation.title = "Core Support Inc"
        annotation.coordinate = coordinate
        mapView.addAnnotation(annotation)
        // Setup
        setupContactUsViewController()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    
    // MARK: - Private API
    private func setupContactUsViewController() {
        
        // View Info
        viewInfo.backgroundColor = UIColor(hex: "#D3E4CDE6")
        viewInfo.layer.cornerRadius = 10
        imageViewBackground.addSubview(viewInfo)
        viewInfo.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(imageViewBackground.snp.top).offset(30)
            make.left.equalTo(imageViewBackground.snp.left).offset(20)
            make.right.equalTo(imageViewBackground.snp.right).inset(20)
        }
        // Label Info Title
        labelInfoTitle.text = "A Holistic Approach"
        labelInfoTitle.font = UIFont(name: "Galvji-Bold", size: 20.0)
        labelInfoTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoTitle.textAlignment = NSTextAlignment.center
        viewInfo.addSubview(labelInfoTitle)
        labelInfoTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewInfo.snp.top).offset(20)
            make.left.equalTo(viewInfo.snp.left).offset(10)
            make.right.equalTo(viewInfo.snp.right).inset(10)
        }
        // Label Info Section
        labelInfoSection.text = "At Core Support Inc, our goal is to empower each individual to reach his or her potential. We work with developmentally disabled adolescents and aging adults in the Yavapai County area to help them find work, enjoy their lives and become productive members of their families and communities."
        labelInfoSection.font = UIFont(name: "Galvji", size: 14.0)
        labelInfoSection.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoSection.textAlignment = NSTextAlignment.left
        labelInfoSection.numberOfLines = 0;
        viewInfo.addSubview(labelInfoSection)
        labelInfoSection.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelInfoTitle.snp.bottom).offset(10)
            make.left.equalTo(self.viewInfo.snp.left).offset(15)
            make.right.equalTo(self.viewInfo.snp.right).inset(15)
            make.bottom.equalTo(self.viewInfo.snp.bottom).inset(20)
        }
        
        // View Contact
        viewContact.backgroundColor = UIColor(hex: "#D3E4CDE6")
        viewContact.layer.cornerRadius = 10
        imageViewBackground.addSubview(viewContact)
        viewContact.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewInfo.snp.bottom).offset(30)
            make.left.equalTo(imageViewBackground.snp.left).offset(20)
            make.right.equalTo(imageViewBackground.snp.right).inset(20)
        }
        // Label Contact Title
        labelContactTitle.text = "Contact Info"
        labelContactTitle.font = UIFont(name: "Galvji-Bold", size: 20.0)
        labelContactTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelContactTitle.textAlignment = NSTextAlignment.center
        viewContact.addSubview(labelContactTitle)
        labelContactTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewContact.snp.top).offset(20)
            make.left.equalTo(viewContact.snp.left).offset(10)
            make.right.equalTo(viewContact.snp.right).inset(10)
        }
        // Label Contact Section
        labelContactSection.text = "202 N Granite St, Suite 207\nPrescott, AZ 86301\n\nPhone: 928-756-2500\n\nEmail: corey_marshall@coresupportinc.org"
        labelContactSection.font = UIFont(name: "Galvji", size: 14.0)
        labelContactSection.textColor = UIColor(hex: "#3D5C32FF")
        labelContactSection.textAlignment = NSTextAlignment.center
        labelContactSection.numberOfLines = 0;
        viewContact.addSubview(labelContactSection)
        labelContactSection.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelContactTitle.snp.bottom).offset(10)
            make.left.equalTo(self.viewContact.snp.left).offset(15)
            make.right.equalTo(self.viewContact.snp.right).inset(15)
            make.bottom.equalTo(self.viewContact.snp.bottom).inset(20)
        }
        
        // View Hours
        viewHours.backgroundColor = UIColor(hex: "#D3E4CDE6")
        viewHours.layer.cornerRadius = 10
        imageViewBackground.addSubview(viewHours)
        viewHours.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewContact.snp.bottom).offset(30)
            make.left.equalTo(imageViewBackground.snp.left).offset(20)
            make.right.equalTo(imageViewBackground.snp.right).inset(20)
        }
        // Label Hours Title
        labelHoursTitle.text = "Hours of Operation"
        labelHoursTitle.font = UIFont(name: "Galvji-Bold", size: 20.0)
        labelHoursTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelHoursTitle.textAlignment = NSTextAlignment.center
        viewHours.addSubview(labelHoursTitle)
        labelHoursTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewHours.snp.top).offset(20)
            make.left.equalTo(viewHours.snp.left).offset(10)
            make.right.equalTo(viewHours.snp.right).inset(10)
        }
        // Label Hours Section
        labelHoursSection.text = "Monday – Friday: 8:00 AM – 5:00 PM"
        labelHoursSection.font = UIFont(name: "Galvji", size: 14.0)
        labelHoursSection.textColor = UIColor(hex: "#3D5C32FF")
        labelHoursSection.textAlignment = NSTextAlignment.center
        labelHoursSection.numberOfLines = 0;
        viewHours.addSubview(labelHoursSection)
        labelHoursSection.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelHoursTitle.snp.bottom).offset(10)
            make.left.equalTo(self.viewHours.snp.left).offset(15)
            make.right.equalTo(self.viewHours.snp.right).inset(15)
            make.bottom.equalTo(self.viewHours.snp.bottom).inset(20)
        }
        
        // Map View
        mapView.layer.cornerRadius = 10
        imageViewBackground.addSubview(mapView)
        mapView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.viewHours.snp.bottom).offset(30)
            make.left.equalTo(imageViewBackground.snp.left).offset(20)
            make.right.equalTo(imageViewBackground.snp.right).inset(20)
            make.bottom.equalTo(imageViewBackground.snp.bottom).inset(30)
            make.height.equalTo(300)
        }
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
