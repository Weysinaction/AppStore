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
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Для вас", image: UIImage(systemName: "person.crop.circle"), tag: 1)
        tabBarItem.badgeColor = .lightGray
        
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .black
    }
}
