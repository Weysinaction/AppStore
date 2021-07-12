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
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Купить", image: UIImage(systemName: "laptopcomputer.and.iphone"), tag: 0)
        tabBarItem.badgeColor = .lightGray
        
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .black
    }
}

