//
//  ThirdViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 12.07.2021.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBarItem()
    }

    //MARK: public methods
    func setupTabBarItem() {
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        tabBarItem.badgeColor = .lightGray
        
        self.navigationController?.navigationBar.backgroundColor = .black
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .black
    }
}
