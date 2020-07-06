//
//  BaseViewController.swift
//  CoreSupport
//
//  Created by Jayme Rutkoski on 7/5/20.
//  Copyright © 2020 coresupport. All rights reserved.
//

import UIKit
import SnapKit


class BaseViewController: UIViewController {
    
    
    // MARK: - Variables
    public var imageViewBackground = UIImageView(frame: CGRect.zero)
    
    // MARK: - Initialization
    private func customInitBaseViewController() {
        
    }
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        
        customInitBaseViewController()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        customInitBaseViewController()
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        customInitBaseViewController()
    }
    
    
    
    // MARK: - UIViewController Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Setup
        setupBaseViewController()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    
    // MARK: - Private API
    private func setupBaseViewController() {
        
        // Image View Background
        imageViewBackground.image = UIImage(named: "coresupport_background")
        imageViewBackground.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.addSubview(imageViewBackground)
        imageViewBackground.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(self.view)
        }
         
    }
    
    
    
    // MARK: - Public API
    
    
    
}
