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
    private var mainScrollView = UIScrollView()
    private var itemsArray: [(imageOne: UIImage, imageTwo: UIImage, imageThree: UIImage, mainTitle: String, subTitle: String, price: String)] = []
    private var firstGestureRecognizer = UITapGestureRecognizer()
    private var secondGestureRecognizer = UITapGestureRecognizer()
    private var thirdGestureRecognizer = UITapGestureRecognizer()
    private let darkGrayBackgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 35/255.0, alpha: 1.00)
    
    //MARK: ViewCOntroller's methods
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    //MARK: private methods
    private func configureView() {
        initArrays()
        setupTabBarItem()
        setupViews()
        setupLabels()
        setupDividers()
        setupImageViews()
        setupTextField()
        setupButtons()
        setupScrollView()
        title = "Поиск"
    }
    
    //Заполняем массив информацией о товарах
    private func initArrays() {
        var imgOne = UIImage(named: "photo_1_1")
        var imgTwo = UIImage(named: "photo_1_2")
        var imgThree = UIImage(named: "photo_1_3")
        guard imgOne != nil && imgTwo != nil && imgThree != nil else {
            return
        }
        itemsArray.append((imageOne: imgOne!, imageTwo: imgTwo!, imageThree: imgThree!,
                           mainTitle: "Чехол Incase Flat для MacBook Pro 16 дюймов",
                           subTitle: "Чехол Incase Flat для MacBook Pro 16 дюймов",
                           price: "2 990.00 руб."))
        
        imgOne = UIImage(named: "photo_2_1")
        imgTwo = UIImage(named: "photo_2_2")
        imgThree = UIImage(named: "photo_2_3")
        guard imgOne != nil && imgTwo != nil && imgThree != nil else {
            return
        }
        itemsArray.append((imageOne: imgOne!, imageTwo: imgTwo!, imageThree: imgThree!,
                           mainTitle: "Кожаный чехол для MacBook Pro 16 дюймов, золотой",
                           subTitle: "Кожаный чехол для MacBook Pro 16 дюймов",
                           price: "3 990.00 руб."))
        
        imgOne = UIImage(named: "photo_3_1")
        imgTwo = UIImage(named: "photo_3_2")
        imgThree = UIImage(named: "photo_3_3")
        guard imgOne != nil && imgTwo != nil && imgThree != nil else {
            return
        }
        itemsArray.append((imageOne: imgOne!, imageTwo: imgTwo!, imageThree: imgThree!,
                           mainTitle: "Спортивный ремешок Black Unity (для Apple Watch)",
                           subTitle: "Спортивный ремешок Black Unity",
                           price: "5 990.00 руб."))
    }
    private func setupTabBarItem() {
        navigationController?.navigationBar.backgroundColor = .black
        view.backgroundColor = .black
    }
    
    private func setupLabels() {
        searchLabel.frame = CGRect(x: 10, y: 50, width: 100, height: 38)
        searchLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
        searchLabel.text = "Поиск"
        searchLabel.textColor = .white
        view.addSubview(searchLabel)
        
        recentViewedLabel.frame = CGRect(x: 10, y: 150, width: 350, height: 50)
        recentViewedLabel.font = UIFont.boldSystemFont(ofSize: 25.0)
        recentViewedLabel.textColor = .white
        recentViewedLabel.text = "Недавно просмотренные"
        view.addSubview(recentViewedLabel)
        
        requestVariablesLabel.frame = CGRect(x: 10, y: 500, width: 300, height: 50)
        requestVariablesLabel.font = UIFont.boldSystemFont(ofSize: 25.0)
        requestVariablesLabel.textColor = .white
        requestVariablesLabel.text = "Варианты запросов"
        view.addSubview(requestVariablesLabel)
        
        airPodsLabel.frame = CGRect(x: 70, y: 550, width: 300, height: 50)
        airPodsLabel.font = searchLabel.font.withSize(20)
        airPodsLabel.textColor = .white
        airPodsLabel.text = "AirPods"
        view.addSubview(airPodsLabel)
        
        appleCareLabel.frame = CGRect(x: 70, y: 600, width: 300, height: 50)
        appleCareLabel.font = searchLabel.font.withSize(20)
        appleCareLabel.textColor = .white
        appleCareLabel.text = "AppleCare"
        view.addSubview(appleCareLabel)
        
        beatsLabel.frame = CGRect(x: 70, y: 650, width: 300, height: 50)
        beatsLabel.font = searchLabel.font.withSize(20)
        beatsLabel.textColor = .white
        beatsLabel.text = "Beats"
        view.addSubview(beatsLabel)
        
        labelCompare.frame = CGRect(x: 70, y: 700, width: 300, height: 50)
        labelCompare.font = searchLabel.font.withSize(20)
        labelCompare.textColor = .white
        labelCompare.text = "Сравните модели iPhone"
        view.addSubview(labelCompare)
        
        firstItemLabel.frame = CGRect(x: 10, y: 130, width: 130, height: 60)
        firstItemLabel.textColor = .white
        firstItemLabel.font = searchLabel.font.withSize(15)
        firstItemLabel.text = itemsArray[0].mainTitle
        firstItemLabel.numberOfLines = 3
        view.addSubview(firstItemLabel)
        
        secondItemLabel.frame = CGRect(x: 170, y: 130, width: 130, height: 60)
        secondItemLabel.textColor = .white
        secondItemLabel.font = searchLabel.font.withSize(15)
        secondItemLabel.text = itemsArray[1].mainTitle
        secondItemLabel.numberOfLines = 3
        view.addSubview(secondItemLabel)
        
        thirdItemLabel.frame = CGRect(x: 330, y: 130, width: 130, height: 60)
        thirdItemLabel.textColor = .white
        thirdItemLabel.font = searchLabel.font.withSize(15)
        thirdItemLabel.text = itemsArray[2].mainTitle
        thirdItemLabel.numberOfLines = 3
        view.addSubview(thirdItemLabel)
    }
    
    private func setupDividers() {
        dividerOne.frame = CGRect(x: 10, y: 600, width: 390, height: 2)
        dividerOne.backgroundColor = .separator
        view.addSubview(dividerOne)
        
        dividerTwo.frame = CGRect(x: 10, y: 650, width: 390, height: 2)
        dividerTwo.backgroundColor = .separator
        view.addSubview(dividerTwo)
        
        dividerThree.frame = CGRect(x: 10, y: 700, width: 390, height: 2)
        dividerThree.backgroundColor = .separator
        view.addSubview(dividerThree)
        
        dividerFour.frame = CGRect(x: 10, y: 750, width: 390, height: 2)
        dividerFour.backgroundColor = .separator
        view.addSubview(dividerFour)
    }
    
    private func setupImageViews() {
        searchImageOne.frame = CGRect(x: 25, y: 565, width: 20, height: 20)
        searchImageOne.tintColor = .lightGray
        searchImageOne.image = UIImage(systemName: "magnifyingglass")
        view.addSubview(searchImageOne)
        
        searchImageTwo.frame = CGRect(x: 25, y: 615, width: 20, height: 20)
        searchImageTwo.tintColor = .lightGray
        searchImageTwo.image = UIImage(systemName: "magnifyingglass")
        view.addSubview(searchImageTwo)
        
        searchImageThree.frame = CGRect(x: 25, y: 665, width: 20, height: 20)
        searchImageThree.tintColor = .lightGray
        searchImageThree.image = UIImage(systemName: "magnifyingglass")
        view.addSubview(searchImageThree)
        
        searchImageFour.frame = CGRect(x: 25, y: 715, width: 20, height: 20)
        searchImageFour.tintColor = .lightGray
        searchImageFour.image = UIImage(systemName: "magnifyingglass")
        searchImageFive.tintColor = .lightGray
        searchImageFive.image = UIImage(systemName: "magnifyingglass")
        view.addSubview(searchImageFour)
        
        firstImageView.frame = CGRect(x: 20, y: 10, width: 110, height: 110)
        firstImageView.image = itemsArray[0].imageOne
        firstImageView.isUserInteractionEnabled = true
        firstImageView.tag = 0
        firstGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(sender:)))
        firstImageView.addGestureRecognizer(firstGestureRecognizer)
        
        secondImageView.frame = CGRect(x: 180, y: 10, width: 110, height: 110)
        secondImageView.image = itemsArray[1].imageOne
        secondImageView.isUserInteractionEnabled = true
        secondImageView.tag = 1
        secondGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(sender:)))
        secondImageView.addGestureRecognizer(secondGestureRecognizer)
        view.addSubview(secondImageView)
        
        thirdImageView.frame = CGRect(x: 340, y: 10 , width: 110, height: 110)
        thirdImageView.image = itemsArray[2].imageOne
        thirdImageView.isUserInteractionEnabled = true
        thirdImageView.tag = 2
        thirdGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(sender:)))
        thirdImageView.addGestureRecognizer(thirdGestureRecognizer)
        view.addSubview(thirdImageView)
    }
    
    private func setupTextField() {
        searchTextField.frame = CGRect(x: 10, y: 100, width: 390, height: 38)
        searchTextField.layer.cornerRadius = 10
        searchTextField.textColor = UIColor(red: 56.00, green: 56.00, blue: 56.00, alpha: 1.00)
        searchTextField.leftView = searchImageFive
        searchTextField.leftViewMode = .always
        searchTextField.placeholder = "Поиск по продуктам и магазинам"
        searchTextField.text = " Поиск по продуктам и магазинам"
        searchTextField.textColor = .lightGray
        searchTextField.backgroundColor = darkGrayBackgroundColor
        view.addSubview(searchTextField)
    }
    
    private func setupViews() {
        firstItemView.frame = CGRect(x: 0, y: 0, width: 150, height: 200)
        firstItemView.layer.cornerRadius = 12
        firstItemView.backgroundColor = darkGrayBackgroundColor
        //self.view.addSubview(firstItemView)
        
        secondItemView.frame = CGRect(x: 160, y: 0, width: 150, height: 200)
        secondItemView.layer.cornerRadius = 12
        secondItemView.backgroundColor = darkGrayBackgroundColor
        //self.view.addSubview(secondItemView)
        
        thirdItemView.frame = CGRect(x: 320, y: 0, width: 150, height: 200)
        thirdItemView.layer.cornerRadius = 12
        thirdItemView.backgroundColor = darkGrayBackgroundColor
        //self.view.addSubview(thirdItemView)
    }
    
    private func setupButtons() {
        recentViewButton.frame = CGRect(x: 330, y: 150, width: 80, height: 50)
        recentViewButton.setTitle("Очистить", for: .normal)
        recentViewButton.setTitleColor(.systemBlue, for: .normal)
        view.addSubview(recentViewButton)
    }
    
    private func setupScrollView() {
        mainScrollView.frame = CGRect(x: 10, y: 200, width: 390, height: 210)
        mainScrollView.contentSize = CGSize(width: 500, height: 200)
        mainScrollView.addSubview(firstItemView)
        mainScrollView.addSubview(secondItemView)
        mainScrollView.addSubview(thirdItemView)
        mainScrollView.addSubview(firstImageView)
        mainScrollView.addSubview(secondImageView)
        mainScrollView.addSubview(thirdImageView)
        mainScrollView.addSubview(firstItemLabel)
        mainScrollView.addSubview(secondItemLabel)
        mainScrollView.addSubview(thirdItemLabel)
        
        view.addSubview(mainScrollView)
    }
    //MARK: selectors
    
    @objc func imageTapped(sender: UITapGestureRecognizer) {
        let vc = DetailViewController()
        if let index = sender.view?.tag {
            vc.itemsTuple = itemsArray[index]
        }
        navigationController?.pushViewController(vc, animated: true)
        
    }
}
