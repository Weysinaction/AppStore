//
//  FourthViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 12.07.2021.
//

import UIKit

final class FourthViewController: UIViewController {

    //MARK: ViewCOntroller's methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarItem()
    }
    
    //MARK: private methods
    private func setupTabBarItem() {
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(systemName: "bag"), tag: 3)
        tabBarItem.badgeColor = .lightGray
        
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .black
    }
}
