//
//  SecondViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 12.07.2021.
//

import UIKit

final class SecondViewController: UIViewController {

    //MARK: ViewCOntroller's methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarItem()
    }

    //MARK: private methods
    func setupTabBarItem() {
        self.view.backgroundColor = .black
    }
}
