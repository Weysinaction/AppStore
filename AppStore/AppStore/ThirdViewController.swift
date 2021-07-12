//
//  ThirdViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 12.07.2021.
//

import UIKit

final class ThirdViewController: UIViewController {

    //MARK: private properties
    private let searchLabel = UILabel()
    private let searchTextField = UITextField()
    private let recentViewedLabel = UILabel()
    private let recentViewButton = UIButton()
    private let firstImageView = UIImageView()
    private let secondImageView = UIImageView()
    private let thirdImageView = UIImageView()
    private let firstItemLabel = UILabel()
    private let secondItemLabel = UILabel()
    private let thirdItemLabel = UILabel()
    private let firstItemView = UIView()
    private let secondItemView = UIView()
    private let thirdItemView = UIView()
    private let requestVariablesLabel = UILabel()
    private let airPodsLabel = UILabel()
    private let appleCareLabel = UILabel()
    private let beatsLabel = UILabel()
    private let labelCompare = UILabel()
    private let searchImageOne = UIImageView()
    private let searchImageTwo = UIImageView()
    private let searchImageThree = UIImageView()
    private let searchImageFour = UIImageView()
    private let searchImageFive = UIImageView()
    private let dividerOne = UIView()
    private let dividerTwo = UIView()
    private let dividerThree = UIView()
    private let dividerFour = UIView()
    private var firstGestureRecognizer = UITapGestureRecognizer()
    private var secondGestureRecognizer = UITapGestureRecognizer()
    private var thirdGestureRecognizer = UITapGestureRecognizer()
    
    //MARK: ViewCOntroller's methods
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBarItem()
        setupViews()
        setupLabels()
        setupDividers()
        setupImageViews()
        setupTextField()
        setupButtons()
    }

    //MARK: private methods
    private func setupTabBarItem() {
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 2)
        tabBarItem.badgeColor = .lightGray
        
        self.navigationController?.navigationBar.backgroundColor = .black
        self.tabBarItem = tabBarItem
        self.view.backgroundColor = .black
    }
    
    private func setupLabels() {
        searchLabel.frame = CGRect(x: 10, y: 50, width: 100, height: 50)
        searchLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
        searchLabel.text = "Поиск"
        searchLabel.textColor = .white
        self.view.addSubview(searchLabel)
        
        recentViewedLabel.frame = CGRect(x: 10, y: 150, width: 350, height: 50)
        recentViewedLabel.font = UIFont.boldSystemFont(ofSize: 25.0)
        recentViewedLabel.textColor = .white
        recentViewedLabel.text = "Недавно просмотренные"
        self.view.addSubview(recentViewedLabel)
        
        requestVariablesLabel.frame = CGRect(x: 10, y: 500, width: 300, height: 50)
        requestVariablesLabel.font = UIFont.boldSystemFont(ofSize: 25.0)
        requestVariablesLabel.textColor = .white
        requestVariablesLabel.text = "Варианты запросов"
        self.view.addSubview(requestVariablesLabel)
        
        airPodsLabel.frame = CGRect(x: 70, y: 550, width: 300, height: 50)
        airPodsLabel.font = searchLabel.font.withSize(20)
        airPodsLabel.textColor = .white
        airPodsLabel.text = "AirPods"
        self.view.addSubview(airPodsLabel)
        
        appleCareLabel.frame = CGRect(x: 70, y: 600, width: 300, height: 50)
        appleCareLabel.font = searchLabel.font.withSize(20)
        appleCareLabel.textColor = .white
        appleCareLabel.text = "AppleCare"
        self.view.addSubview(appleCareLabel)
        
        beatsLabel.frame = CGRect(x: 70, y: 650, width: 300, height: 50)
        beatsLabel.font = searchLabel.font.withSize(20)
        beatsLabel.textColor = .white
        beatsLabel.text = "Beats"
        self.view.addSubview(beatsLabel)
        
        labelCompare.frame = CGRect(x: 70, y: 700, width: 300, height: 50)
        labelCompare.font = searchLabel.font.withSize(20)
        labelCompare.textColor = .white
        labelCompare.text = "Сравните модели iPhone"
        self.view.addSubview(labelCompare)
        
        firstItemLabel.frame = CGRect(x: 20, y: 330, width: 130, height: 60)
        firstItemLabel.textColor = .white
        firstItemLabel.font = searchLabel.font.withSize(15)
        firstItemLabel.text = "Чехол Incase Flat для MacBook Pro 16 дюймов"
        firstItemLabel.numberOfLines = 3
        self.view.addSubview(firstItemLabel)
        
        secondItemLabel.frame = CGRect(x: 180, y: 330, width: 130, height: 60)
        secondItemLabel.textColor = .white
        secondItemLabel.font = searchLabel.font.withSize(15)
        secondItemLabel.text = "Спортивный ремешок Black Unity (для Apple Watch)"
        secondItemLabel.numberOfLines = 3
        self.view.addSubview(secondItemLabel)
        
        thirdItemLabel.frame = CGRect(x: 340, y: 330, width: 130, height: 60)
        thirdItemLabel.textColor = .white
        thirdItemLabel.font = searchLabel.font.withSize(15)
        thirdItemLabel.text = "Кожаный чехол для MacBook Pro 16 дюймов, золотой"
        thirdItemLabel.numberOfLines = 3
        self.view.addSubview(thirdItemLabel)
    }
    
    private func setupDividers() {
        dividerOne.frame = CGRect(x: 10, y: 600, width: 390, height: 2)
        dividerOne.backgroundColor = .separator
        self.view.addSubview(dividerOne)
        
        dividerTwo.frame = CGRect(x: 10, y: 650, width: 390, height: 2)
        dividerTwo.backgroundColor = .separator
        self.view.addSubview(dividerTwo)
        
        dividerThree.frame = CGRect(x: 10, y: 700, width: 390, height: 2)
        dividerThree.backgroundColor = .separator
        self.view.addSubview(dividerThree)
        
        dividerFour.frame = CGRect(x: 10, y: 750, width: 390, height: 2)
        dividerFour.backgroundColor = .separator
        self.view.addSubview(dividerFour)
    }
    
    private func setupImageViews() {
        searchImageOne.frame = CGRect(x: 25, y: 565, width: 20, height: 20)
        searchImageOne.tintColor = .lightGray
        searchImageOne.image = UIImage(systemName: "magnifyingglass")
        self.view.addSubview(searchImageOne)
        
        searchImageTwo.frame = CGRect(x: 25, y: 615, width: 20, height: 20)
        searchImageTwo.tintColor = .lightGray
        searchImageTwo.image = UIImage(systemName: "magnifyingglass")
        self.view.addSubview(searchImageTwo)
        
        searchImageThree.frame = CGRect(x: 25, y: 665, width: 20, height: 20)
        searchImageThree.tintColor = .lightGray
        searchImageThree.image = UIImage(systemName: "magnifyingglass")
        self.view.addSubview(searchImageThree)
        
        searchImageFour.frame = CGRect(x: 25, y: 715, width: 20, height: 20)
        searchImageFour.tintColor = .lightGray
        searchImageFour.image = UIImage(systemName: "magnifyingglass")
        searchImageFive.tintColor = .lightGray
        searchImageFive.image = UIImage(systemName: "magnifyingglass")
        self.view.addSubview(searchImageFour)
        
        firstImageView.frame = CGRect(x: 30, y: 210, width: 110, height: 110)
        firstImageView.image = UIImage(named: "iu-23")
        firstImageView.isUserInteractionEnabled = true
        firstImageView.tag = 0
        firstGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(sender:)))
        firstImageView.addGestureRecognizer(firstGestureRecognizer)
        self.view.addSubview(firstImageView)
        
        secondImageView.frame = CGRect(x: 190, y: 210, width: 110, height: 110)
        secondImageView.image = UIImage(named: "iu-24")
        secondImageView.isUserInteractionEnabled = true
        secondImageView.tag = 1
        secondGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(sender:)))
        secondImageView.addGestureRecognizer(secondGestureRecognizer)
        self.view.addSubview(secondImageView)
        
        thirdImageView.frame = CGRect(x: 350, y: 210 , width: 110, height: 110)
        thirdImageView.image = UIImage(named: "iu-25")
        thirdImageView.isUserInteractionEnabled = true
        thirdImageView.tag = 2
        thirdGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(sender:)))
        thirdImageView.addGestureRecognizer(thirdGestureRecognizer)
        self.view.addSubview(thirdImageView)
    }
    
    private func setupTextField() {
        searchTextField.frame = CGRect(x: 10, y: 100, width: 390, height: 38)
        searchTextField.layer.cornerRadius = 10
        searchTextField.textColor = .darkGray
        searchTextField.leftView = searchImageFive
        searchTextField.leftViewMode = .always
        searchTextField.placeholder = "Поиск по продуктам и магазинам"
        searchTextField.backgroundColor = .white
        self.view.addSubview(searchTextField)
    }
    
    private func setupViews() {
        firstItemView.frame = CGRect(x: 10, y: 200, width: 150, height: 200)
        firstItemView.layer.cornerRadius = 12
        firstItemView.backgroundColor = .darkGray
        self.view.addSubview(firstItemView)
        
        secondItemView.frame = CGRect(x: 170, y: 200, width: 150, height: 200)
        secondItemView.layer.cornerRadius = 12
        secondItemView.backgroundColor = .darkGray
        self.view.addSubview(secondItemView)
        
        thirdItemView.frame = CGRect(x: 330, y: 200, width: 150, height: 200)
        thirdItemView.layer.cornerRadius = 12
        thirdItemView.backgroundColor = .darkGray
        self.view.addSubview(thirdItemView)
    }
    
    private func setupButtons() {
        recentViewButton.frame = CGRect(x: 330, y: 150, width: 80, height: 50)
        recentViewButton.setTitle("Очистить", for: .normal)
        recentViewButton.setTitleColor(.systemBlue, for: .normal)
        self.view.addSubview(recentViewButton)
    }
    //MARK: selectors
    
    @objc func imageTapped(sender: UITapGestureRecognizer) {
        let vc = DetailViewController()
        switch sender.view?.tag {
        case 0:
            if let image = firstImageView.image {
                vc.image = image
            }
            if let string = firstItemLabel.text {
                vc.inputText = string
            }
        case 1:
            if let image = secondImageView.image {
                vc.image = image
            }
            if let string = secondItemLabel.text {
                vc.inputText = string
            }
        case 2:
            if let image = thirdImageView.image {
                vc.image = image
            }
            if let string = thirdItemLabel.text {
                vc.inputText = string
            }
        default:
            break
        }
        self.present(vc, animated: true, completion: nil)
        
    }
}
