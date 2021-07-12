//
//  DetailViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 12.07.2021.
//

import UIKit

final class DetailViewController: UIViewController {

    //MARK: public properties
    var image = UIImage()
    var inputText = ""
    
    //MARK: private properties
    private let imageView = UIImageView()
    private let mainLabel = UILabel()
    
    //MARK: ViewCOntroller's methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        setupImageViews()
        setupLabels()
    }

    //MARK: private methods
    private func setupImageViews() {
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        imageView.center = self.view.center
        imageView.image = image
        self.view.addSubview(imageView)
    }
    
    private func setupLabels() {
        mainLabel.frame = CGRect(x: 100, y: 50, width: 200, height: 100)
        mainLabel.text = inputText
        mainLabel.textColor = .white
        mainLabel.numberOfLines = 3
        self.view.addSubview(mainLabel)
    }
}
