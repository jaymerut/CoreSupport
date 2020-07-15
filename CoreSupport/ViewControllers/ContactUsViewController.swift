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


class ContactUsViewController: BaseViewController {
    
    
    // MARK: - Variables
    var viewInfo = UIView(frame: CGRect.zero)
    var viewContact = UIView(frame: CGRect.zero)
    var viewHours = UIView(frame: CGRect.zero)
    var viewMap = UIView(frame: CGRect.zero)
    
    var imageViewMap = UIImageView(frame: CGRect.zero)
    var imageViewArrow = UIImageView(frame: CGRect.zero)
    
    var labelInfoTitle = UILabel(frame: CGRect.zero)
    var labelInfoSection = UILabel(frame:CGRect.zero)
    var labelContactTitle = UILabel(frame: CGRect.zero)
    var labelContactAddress = UILabel(frame: CGRect.zero)
    var labelContactSection = UILabel(frame:CGRect.zero)
    var labelHoursTitle = UILabel(frame: CGRect.zero)
    var labelHoursSection = UILabel(frame:CGRect.zero)
    
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
        
        viewMap.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:))))
        viewMap.isUserInteractionEnabled = true
        viewContact.isUserInteractionEnabled = true
        imageViewBackground.isUserInteractionEnabled = true
        imageViewMap.isUserInteractionEnabled = true
        
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
        viewInfo.isUserInteractionEnabled = true
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
        labelContactSection.text = "Phone: 928-756-2500\n\nEmail: corey_marshall@coresupportinc.org"
        labelContactSection.font = UIFont(name: "Galvji", size: 14.0)
        labelContactSection.textColor = UIColor(hex: "#3D5C32FF")
        labelContactSection.textAlignment = NSTextAlignment.center
        labelContactSection.numberOfLines = 0;
        viewContact.addSubview(labelContactSection)
        labelContactSection.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelContactTitle.snp.bottom).offset(10)
            make.left.equalTo(self.viewContact.snp.left).offset(15)
            make.right.equalTo(self.viewContact.snp.right).inset(15)
        }
        // Image View Map
        imageViewMap.contentMode = UIView.ContentMode.scaleAspectFill
        imageViewMap.image = UIImage(named: "map_image")
        imageViewMap.layer.cornerRadius = 10
        imageViewMap.layer.masksToBounds = true
        imageViewMap.clipsToBounds = true
        viewContact.addSubview(imageViewMap)
        imageViewMap.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelContactSection.snp.bottom).offset(10)
            make.left.equalTo(self.viewContact.snp.left).offset(15)
            make.right.equalTo(self.viewContact.snp.right).inset(15)
            make.bottom.equalTo(self.viewContact.snp.bottom).inset(20)
        }
        
        // View Map
        viewMap.backgroundColor = UIColor(hex: "#3D5C3280")
        viewMap.layer.cornerRadius = 10
        
        imageViewMap.addSubview(viewMap)
        viewMap.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(imageViewMap)
        }

        // Image View Arrow
        imageViewArrow.contentMode = UIView.ContentMode.scaleAspectFit
        imageViewArrow.image = UIImage(named: "arrow")
        viewMap.addSubview(imageViewArrow)
        imageViewArrow.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.viewMap.snp.top).offset(10)
            make.right.equalTo(self.viewMap.snp.right).inset(10)
            make.bottom.equalTo(self.viewMap.snp.bottom).inset(10)
            make.centerY.equalTo(self.viewMap.snp.centerY)
            make.height.equalTo(80)
        }
        
    
        // Label Contact Address
        labelContactAddress.text = "202 N Granite St, Suite 207\nPrescott, AZ 86301"
        labelContactAddress.font = UIFont(name: "Galvji-Bold", size: 12.0)
        labelContactAddress.textColor = UIColor.white
        labelContactAddress.textAlignment = NSTextAlignment.left
        labelContactAddress.numberOfLines = 0;
        viewMap.addSubview(labelContactAddress)
        labelContactAddress.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.viewMap.snp.top).offset(10)
            make.left.equalTo(self.viewMap.snp.left).offset(10)
            make.right.equalTo(self.viewMap.snp.right).inset(10)
            make.bottom.equalTo(self.viewMap.snp.bottom).inset(10)
            make.centerY.equalTo(self.viewMap.snp.centerY)
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
        
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer) {
        let destinationVC = MapViewController()
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    
    // MARK: - Public API
    
    
    
}
