//
//  SinglePageViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 15.07.2021.
//

import UIKit

final class SinglePageViewController: UIViewController {

    //MARK: view elements
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.frame = CGRect(x: 20, y: 100, width: 375, height: 500)
        view.contentMode = .scaleAspectFill
        return view
    }()
    private let titleLabel: UILabel = {
        let view = UILabel()
        view.frame = CGRect(x: 20, y: 620, width: 380, height: 50)
        view.textAlignment = .center
        view.font = UIFont(name: "BodoniSvtyTwoITCTT-Bold", size: 26)
        return view
    }()
    private let subTitleLabel: UILabel = {
        let view = UILabel()
        view.frame = CGRect(x: 20, y: 660, width: 380, height: 80)
        view.textAlignment = .center
        view.numberOfLines = 2
        view.textColor = .lightGray
        return view
    }()
    private let buttonSkip: UIButton = {
        let view = UIButton()
        view.frame = CGRect(x: 40, y: 740, width: 100, height: 50)
        view.setTitle("SKIP", for: .normal)
        view.isHidden = false
        view.setTitleColor(.black, for: .normal)
        
        return view
    }()
    
//    private let buttonNext: UIButton = {
//        let view = UIButton()
//        view.frame = CGRect(x: 275, y: 740, width: 100, height: 50)
//        view.setTitle("NEXT", for: .normal)
//        view.isHidden = false
//        view.setTitleColor(.systemBlue, for: .normal)
//        
//        return view
//    }()
//    
//    private let buttonGetStarted: UIButton = {
//        let view = UIButton()
//        view.frame = CGRect(x: 130, y: 740, width: 150, height: 50)
//        view.setTitle("GET STARTED!", for: .normal)
//        view.isHidden = true
//        view.setTitleColor(.systemBlue, for: .normal)
//        
//        return view
//    }()
    
    //MARK: private properties
    private var isButtonShow = false
    
    lazy var subView: [UIView] = [imageView,
                                  titleLabel,
                                  subTitleLabel]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    init(singlePageHelper: SinglePageHelper) {
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = UIColor.systemBackground
        edgesForExtendedLayout = []
        imageView.image = singlePageHelper.image
        titleLabel.text = singlePageHelper.title
        subTitleLabel.text = singlePageHelper.subTitle
        isButtonShow = singlePageHelper.isButtonShow
       
//        if isButtonShow {
//            buttonSkip.isHidden = true
//            buttonNext.isHidden = true
//            buttonGetStarted.isHidden = false
//        }
        
        for view in subView {
            self.view.addSubview(view)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
