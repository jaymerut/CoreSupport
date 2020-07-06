//
//  ServicesOpportunityViewController.swift
//  CoreSupport
//
//  Created by Jayme Rutkoski on 7/5/20.
//  Copyright © 2020 coresupport. All rights reserved.
//

import UIKit
import SnapKit


class ServicesOpportunityViewController: BaseViewController {
    
    
    // MARK: - Variables
    var containerView = UIView(frame: CGRect.zero)
    var viewInfo = UIView(frame: CGRect.zero)
    var viewServicesInfo = UIView(frame: CGRect.zero)
    var viewJoinUsInfo = UIView(frame: CGRect.zero)
    
    var imageViewHereToServe = UIImageView(frame: CGRect.zero)
    
    var labelInfoTitle = UILabel(frame: CGRect.zero)
    var labelInfoSubTitle = UILabel(frame:CGRect.zero)
    var labelInfoSection = UILabel(frame:CGRect.zero)
    var labelServicesInfoSubTitle = UILabel(frame:CGRect.zero)
    var labelServicesInfoSection = UILabel(frame:CGRect.zero)
    var labelJoinUsInfoSubTitle = UILabel(frame:CGRect.zero)
    var labelJoinUsInfoSection = UILabel(frame:CGRect.zero)
    
    var buttonApplication = UIButton(type: UIButton.ButtonType.custom)
    
    // MARK: - Initialization
    private func customInitServicesOpportunityViewController() {
        
    }
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        
        customInitServicesOpportunityViewController()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitServicesOpportunityViewController()
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        customInitServicesOpportunityViewController()
    }
    
    
    
    // MARK: - UIViewController Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Services & Opportunities"
        // Setup
        setupServicesOpportunityViewController()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    
    // MARK: - Private API
    private func setupServicesOpportunityViewController() {
        
        // Container View
        containerView.backgroundColor = UIColor.clear
        imageViewBackground.addSubview(containerView)
        containerView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(imageViewBackground.snp.top)
            make.left.equalTo(imageViewBackground.snp.left).offset(20)
            make.right.equalTo(imageViewBackground.snp.right).inset(20)
            make.bottom.equalTo(imageViewBackground.snp.bottom)
        }
        
        // View Info
        viewInfo.backgroundColor = UIColor(hex: "#D3E4CDE6")
        viewInfo.layer.cornerRadius = 10
        containerView.addSubview(viewInfo)
        viewInfo.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.containerView.snp.top).offset(30)
            make.left.equalTo(self.containerView.snp.left)
            make.right.equalTo(self.containerView.snp.right)
            //make.height.equalTo(375)
        }
        // Label Info Title
        labelInfoTitle.text = "We’re Here to Serve"
        labelInfoTitle.font = UIFont(name: "Galvji-Bold", size: 20.0)
        labelInfoTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoTitle.textAlignment = NSTextAlignment.center
        viewInfo.addSubview(labelInfoTitle)
        labelInfoTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewInfo.snp.top).offset(20)
            make.left.equalTo(viewInfo.snp.left).offset(15)
            make.right.equalTo(viewInfo.snp.right).inset(15)
            make.height.equalTo(30)
        }
        
        // Image View HereToServe
        imageViewHereToServe.image = UIImage(named: "here_to_serve")
        imageViewHereToServe.contentMode = UIView.ContentMode.scaleAspectFit
        viewInfo.addSubview(imageViewHereToServe)
        imageViewHereToServe.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelInfoTitle.snp.bottom).offset(10)
            make.centerX.equalTo(self.viewInfo.snp.centerX)
            make.height.equalTo(125)
        }
        
        // Label Info SubTitle
        labelInfoSubTitle.text = "Social Services for Elderly and Developmentally Disabled"
        labelInfoSubTitle.font = UIFont(name: "Galvji-Bold", size: 16.0)
        labelInfoSubTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoSubTitle.textAlignment = NSTextAlignment.center
        labelInfoSubTitle.numberOfLines = 0;
        viewInfo.addSubview(labelInfoSubTitle)
        labelInfoSubTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.imageViewHereToServe.snp.bottom).offset(10)
            make.left.equalTo(self.viewInfo.snp.left).offset(15)
            make.right.equalTo(self.viewInfo.snp.right).inset(15)
        }
        // Label Info Section
        labelInfoSection.text = "Our focus at Core Support INC is to provide a path to success for elderly individuals and developmentally disabled adolescents in Prescott, AZ. We are licensed and insured in the state to offer a wide range of social services for individuals in need. If you have a loved one who has special needs, allow us to help him or her become productive members of the community."
        labelInfoSection.font = UIFont(name: "Galvji", size: 14.0)
        labelInfoSection.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoSection.textAlignment = NSTextAlignment.left
        labelInfoSection.numberOfLines = 0;
        viewInfo.addSubview(labelInfoSection)
        labelInfoSection.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelInfoSubTitle.snp.bottom).offset(10)
            make.left.equalTo(self.viewInfo.snp.left).offset(15)
            make.right.equalTo(self.viewInfo.snp.right).inset(15)
            make.bottom.equalTo(self.viewInfo.snp.bottom).inset(20)
        }
        
        // View ServicesInfo
        viewServicesInfo.backgroundColor = UIColor(hex: "#D3E4CDE6")
        viewServicesInfo.layer.cornerRadius = 10
        containerView.addSubview(viewServicesInfo)
        viewServicesInfo.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewInfo.snp.bottom).offset(30);
            make.left.equalTo(self.containerView.snp.left)
            make.right.equalTo(self.containerView.snp.right)
            //make.height.equalTo(115)
        }
        // Label ServicesInfo SubTitle
        labelServicesInfoSubTitle.text = "Our Services Include:"
        labelServicesInfoSubTitle.font = UIFont(name: "Galvji-Bold", size: 16.0)
        labelServicesInfoSubTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelServicesInfoSubTitle.textAlignment = NSTextAlignment.center
        labelServicesInfoSubTitle.numberOfLines = 0;
        viewServicesInfo.addSubview(labelServicesInfoSubTitle)
        labelServicesInfoSubTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.viewServicesInfo.snp.top).offset(20)
            make.left.equalTo(self.viewServicesInfo.snp.left).offset(15)
            make.right.equalTo(self.viewServicesInfo.snp.right).inset(15)
        }
        // Label ServicesInfo Section
        labelServicesInfoSection.text = "\n\u{2022} Job Placement \n\n\u{2022} Recreational Activities \n\n\u{2022} Volunteer Opportunities"
        labelServicesInfoSection.font = UIFont(name: "Galvji", size: 14.0)
        labelServicesInfoSection.textColor = UIColor(hex: "#3D5C32FF")
        labelServicesInfoSection.textAlignment = NSTextAlignment.left
        labelServicesInfoSection.numberOfLines = 0;
        viewServicesInfo.addSubview(labelServicesInfoSection)
        labelServicesInfoSection.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelServicesInfoSubTitle.snp.bottom).offset(10)
            make.left.equalTo(self.viewServicesInfo.snp.left).offset(15)
            make.right.equalTo(self.viewServicesInfo.snp.right).inset(15)
            make.bottom.equalTo(self.viewServicesInfo.snp.bottom).inset(20)
        }
        
        // View JoinUsInfo
        viewJoinUsInfo.backgroundColor = UIColor(hex: "#D3E4CDE6")
        viewJoinUsInfo.layer.cornerRadius = 10
        containerView.addSubview(viewJoinUsInfo)
        viewJoinUsInfo.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewServicesInfo.snp.bottom).offset(30)
            make.left.equalTo(self.containerView.snp.left)
            make.right.equalTo(self.containerView.snp.right)
            make.bottom.equalTo(self.containerView.snp.bottom).inset(20)
            //make.height.equalTo(200)
        }
        // Label JoinUsInfo SubTitle
        labelJoinUsInfoSubTitle.text = "Join Our Team!"
        labelJoinUsInfoSubTitle.font = UIFont(name: "Galvji-Bold", size: 16.0)
        labelJoinUsInfoSubTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelJoinUsInfoSubTitle.textAlignment = NSTextAlignment.center
        labelJoinUsInfoSubTitle.numberOfLines = 0;
        viewJoinUsInfo.addSubview(labelJoinUsInfoSubTitle)
        labelJoinUsInfoSubTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.viewJoinUsInfo.snp.top).offset(20)
            make.left.equalTo(self.viewJoinUsInfo.snp.left).offset(15)
            make.right.equalTo(self.viewJoinUsInfo.snp.right).inset(15)
        }
        // Label JoinUsInfo Section
        labelJoinUsInfoSection.text = "The more people we have, the better services we can provide. We are always looking to expand our team. If you would like to help service the disabled within your community, please fill out our employment application today!"
        labelJoinUsInfoSection.font = UIFont(name: "Galvji", size: 14.0)
        labelJoinUsInfoSection.textColor = UIColor(hex: "#3D5C32FF")
        labelJoinUsInfoSection.textAlignment = NSTextAlignment.left
        labelJoinUsInfoSection.numberOfLines = 0;
        viewJoinUsInfo.addSubview(labelJoinUsInfoSection)
        labelJoinUsInfoSection.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelJoinUsInfoSubTitle.snp.bottom).offset(10)
            make.left.equalTo(self.viewJoinUsInfo.snp.left).offset(15)
            make.right.equalTo(self.viewJoinUsInfo.snp.right).inset(15)
        }
        
        // Button Application
        buttonApplication.titleLabel!.font = UIFont(name: "Galvji-Bold", size: 14.0)
        buttonApplication.setTitle("Download Employment Application", for: UIControl.State.normal)
        buttonApplication.setTitleColor(UIColor.white, for: UIControl.State.normal)
        buttonApplication.setTitleColor(UIColor.black, for: UIControl.State.selected)
        buttonApplication.backgroundColor = UIColor(hex: "#3D5C32FF")
        buttonApplication.layer.cornerRadius = 10
        viewJoinUsInfo.addSubview(buttonApplication)
        buttonApplication.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(labelJoinUsInfoSection.snp.bottom).offset(10)
            make.left.equalTo(self.viewJoinUsInfo.snp.left).offset(30)
            make.right.equalTo(self.viewJoinUsInfo.snp.right).inset(30)
            make.bottom.equalTo(self.viewJoinUsInfo.snp.bottom).inset(20)
            make.height.equalTo(40)
        }
    }
    
    
    
    // MARK: - Public API
    
    
    
}
