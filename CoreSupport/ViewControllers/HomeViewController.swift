//
//  HomeViewController.swift
//  CoreSupport
//
//  Created by Jayme Rutkoski on 7/5/20.
//  Copyright © 2020 coresupport. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewController {
    
    
    // MARK: - Variables
    var viewInfo = UIView(frame: CGRect.zero)
    var labelInfoTitle = UILabel(frame: CGRect.zero)
    var labelInfoSubTitle = UILabel(frame:CGRect.zero)
    var labelInfoSection1 = UILabel(frame:CGRect.zero)
    var labelInfoSection2 = UILabel(frame:CGRect.zero)
    
    // MARK: - Initialization
    private func customInitHomeViewController() {
        
    }
    convenience init() {
        self.init(nibName: nil, bundle: nil)

        customInitHomeViewController()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitHomeViewController()
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        customInitHomeViewController()
    }
    
    
    
    // MARK: - UIViewController Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        // Setup
        setupHomeViewController()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    
    // MARK: - Private API
    private func setupHomeViewController() {
        
        // View Info
        viewInfo.backgroundColor = UIColor(hex: "#D3E4CDE6")
        viewInfo.layer.cornerRadius = 10
        imageViewBackground.addSubview(viewInfo)
        viewInfo.snp.makeConstraints { (make) -> Void in
            if #available(iOS 11.0, *) {
                make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10);
            } else {
                make.top.equalTo(self.view.snp.top).offset(10);
            }
            make.left.equalTo(self.view.snp.left).offset(20)
            make.right.equalTo(self.view.snp.right).inset(20)
            make.height.equalTo(375)
        }
        
        // Label Info Title
        labelInfoTitle.text = "Empowering Each Individual"
        labelInfoTitle.font = UIFont(name: "Galvji-Bold", size: 20.0)
        labelInfoTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoTitle.textAlignment = NSTextAlignment.center
        viewInfo.addSubview(labelInfoTitle)
        labelInfoTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(viewInfo.snp.top).offset(20)
            make.left.equalTo(viewInfo.snp.left).offset(10)
            make.right.equalTo(viewInfo.snp.right).inset(10)
        }
        
        // Label Info SubTitle
        labelInfoSubTitle.text = "Social Services for Elderly and Developmentally Disabled"
        labelInfoSubTitle.font = UIFont(name: "Galvji-Bold", size: 16.0)
        labelInfoSubTitle.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoSubTitle.textAlignment = NSTextAlignment.center
        labelInfoSubTitle.numberOfLines = 0;
        viewInfo.addSubview(labelInfoSubTitle)
        labelInfoSubTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelInfoTitle.snp.bottom).offset(20)
            make.left.equalTo(self.viewInfo.snp.left).offset(10)
            make.right.equalTo(self.viewInfo.snp.right).inset(10)
        }
        
        // Label Info Section1
        labelInfoSection1.text = "At Core Support Inc, we feel it’s our responsibility to provide assistance to individuals who need our help the most. We offer social services to older adults and developmentally disabled adolescents in Prescott, AZ, and in Yavapai County."
        labelInfoSection1.font = UIFont(name: "Galvji", size: 14.0)
        labelInfoSection1.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoSection1.textAlignment = NSTextAlignment.left
        labelInfoSection1.numberOfLines = 0;
        viewInfo.addSubview(labelInfoSection1)
        labelInfoSection1.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelInfoSubTitle.snp.bottom).offset(10)
            make.left.equalTo(self.viewInfo.snp.left).offset(10)
            make.right.equalTo(self.viewInfo.snp.right).inset(10)
        }
        
        // Label Info Section2
        labelInfoSection2.text = "We provide a holistic approach that emphasizes individuals lifestyles within their communities and families. Rather than focusing solely on providing treatments, we provide paths for short and long-term success within our society. Our goal is to help these individuals live meaningful and productive lives by providing employment assistance, recreational activities, volunteer opportunities and much more."
        labelInfoSection2.font = UIFont(name: "Galvji", size: 14.0)
        labelInfoSection2.textColor = UIColor(hex: "#3D5C32FF")
        labelInfoSection2.textAlignment = NSTextAlignment.left
        labelInfoSection2.numberOfLines = 0;
        viewInfo.addSubview(labelInfoSection2)
        labelInfoSection2.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.labelInfoSection1.snp.bottom).offset(10)
            make.left.equalTo(self.viewInfo.snp.left).offset(10)
            make.right.equalTo(self.viewInfo.snp.right).inset(10)
        }
    }
    
    
    
    // MARK: - Public API
    
    
    
}
