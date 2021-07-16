//
//  ViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 11.07.2021.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: private properties
    var isNotShowPageViewController = true
    //MARK: ViewCOntroller's methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarItem()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if isNotShowPageViewController {
            isNotShowPageViewController = false
            setupPageViewController()
        }
    }

    //MARK: private methods
    private func setupTabBarItem() {
        self.view.backgroundColor = .black
    }
    
    private func setupPageViewController() {
        let pageViewController = PageViewController()
        pageViewController.modalPresentationStyle = .fullScreen
        present(pageViewController, animated: true)
    }
}

