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
    var collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
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
    /*
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if #available(iOS 13.0, *) {
            return .lightContent
        } else {
            return .lightContent
        }
    }
    */
    
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
        self.view.backgroundColor = UIColor(hex: "#D3E4CDFF")
        // Scroll View
        collectionView.backgroundColor = UIColor(hex: "#D3E4CDFF")
        self.view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) -> Void in
            if #available(iOS 11.0, *) {
                make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            } else {
                make.top.equalTo(self.view.snp.top)
            }
            make.left.equalTo(self.view.snp.left)
            make.right.equalTo(self.view.snp.right)
            make.bottom.equalTo(self.view.snp.bottom)
        }
        
        // Image View Background
        imageViewBackground.image = UIImage(named: "coresupport_background")
        imageViewBackground.contentMode = UIView.ContentMode.scaleAspectFill
        collectionView.addSubview(imageViewBackground)
        imageViewBackground.snp.makeConstraints { (make) -> Void in
            make.top.bottom.equalTo(self.collectionView)
            make.left.right.equalTo(self.view)
            make.height.greaterThanOrEqualTo(self.collectionView)
        }
         
    }
    
    
    
    // MARK: - Public API
    
    
    
}
