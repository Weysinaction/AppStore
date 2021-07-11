//
//  FourthViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 12.07.2021.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarItem()
    }
    
    func setupTabBarItem() {
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(systemName: "bag"), tag: 3)
        tabBarItem.badgeColor = .lightGray
        
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .black
    }
}
