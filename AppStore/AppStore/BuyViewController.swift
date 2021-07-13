//
//  ViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 11.07.2021.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: ViewCOntroller's methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarItem()
    }

    //MARK: private methods
    private func setupTabBarItem() {
        self.view.backgroundColor = .black
    }
}

