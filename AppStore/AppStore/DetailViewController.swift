//
//  DetailViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 12.07.2021.
//

import UIKit

final class DetailViewController: UIViewController {

    //MARK: public properties
    var itemsTuple: (imageOne: UIImage, imageTwo: UIImage, imageThree: UIImage, mainTitle: String, subTitle: String, price: String, tag: Int)? = nil
    
    //MARK: private properties
    private let imageView = UIImageView()
    private let firstImageView = UIImageView()
    private let secondImageView = UIImageView()
    private let thirdImageView = UIImageView()
    private var firstGestureRecognizer = UITapGestureRecognizer()
    private var secondGestureRecognizer = UITapGestureRecognizer()
    private var thirdGestureRecognizer = UITapGestureRecognizer()
    private let headerLabel = UILabel()
    private let priceLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let mainScrollView = UIScrollView()
    private let firstCompareLabel = UILabel()
    private let secondCompareLabel = UILabel()
    private let firstShippingLabel = UILabel()
    private let secondShippingLabel = UILabel()
    private let thirdShippingLabel = UILabel()
    private let shippingImageView = UIImageView()
    private let lightGrayButton = UIButton()
    private let darkGrayButton = UIButton()
    private let comparableImageView = UIImageView()
    private let addToCartButton = UIButton()
    private let darkGrayBackgroundColor = UIColor(red: 35/255.0, green: 35/255.0, blue: 35/255.0, alpha: 1.00)
    
    //MARK: ViewCOntroller's methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        setupLabels()
        setupScrollView()
        configureNavBar()
        setupButtons()
        setupImageViews()
    }

    //MARK: private methods
    private func setupScrollView() {
        mainScrollView.frame = CGRect(x: 10, y: 200, width: 390, height: 210)
        mainScrollView.addSubview(firstImageView)
        mainScrollView.addSubview(secondImageView)
        mainScrollView.addSubview(thirdImageView)
        mainScrollView.contentSize = CGSize(width: 1200, height: 210)
        mainScrollView.isPagingEnabled = true
        self.view.addSubview(mainScrollView)
    }
    private func setupButtons() {
        lightGrayButton.frame = CGRect(x: 150, y: 500, width: 40, height: 40)
        lightGrayButton.layer.cornerRadius = lightGrayButton.frame.width / 2
        lightGrayButton.backgroundColor = .lightGray
        self.view.addSubview(lightGrayButton)
        
        darkGrayButton.frame = CGRect(x: 200, y: 500, width: 40, height: 40)
        darkGrayButton.layer.cornerRadius = darkGrayButton.frame.width / 2
        darkGrayButton.backgroundColor = .darkGray
        darkGrayButton.layer.borderWidth = 2
        darkGrayButton.layer.borderColor = CGColor(red: 33/255, green: 153/255, blue: 255/255, alpha: 1)
        self.view.addSubview(darkGrayButton)
        
        addToCartButton.frame = CGRect(x: 10, y: 640, width: 390, height: 50)
        addToCartButton.setTitle("Добавить в корзину", for: .normal)
        addToCartButton.backgroundColor = .systemBlue
        addToCartButton.layer.cornerRadius = 10
        addToCartButton.setTitleColor(.white, for: .normal)
        self.view.addSubview(addToCartButton)
    }
    private func configureNavBar() {
        self.navigationController?.navigationBar.barTintColor = .black
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        let barButtonItemOne = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target: self, action: nil)
        let barButtonItemTwo = UIBarButtonItem(image: UIImage(systemName: "heart"), style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItems = [barButtonItemTwo, barButtonItemOne]
    }
    private func setupImageViews() {
        firstImageView.frame = CGRect(x: 100, y: 10, width: 200, height: 200)
        firstImageView.image = itemsTuple?.imageOne
        firstImageView.isUserInteractionEnabled = true
        firstGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        firstImageView.addGestureRecognizer(firstGestureRecognizer)
        
        secondImageView.frame = CGRect(x: 500, y: 10, width: 200, height: 200)
        secondImageView.image = itemsTuple?.imageTwo
        secondImageView.isUserInteractionEnabled = true
        secondGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        secondImageView.addGestureRecognizer(secondGestureRecognizer)
        
        thirdImageView.frame = CGRect(x: 900, y: 10 , width: 200, height: 200)
        thirdImageView.image = itemsTuple?.imageThree
        thirdImageView.isUserInteractionEnabled = true
        thirdGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        thirdImageView.addGestureRecognizer(thirdGestureRecognizer)
        
        comparableImageView.frame = CGRect(x: 30, y: 585, width: 20, height: 20)
        comparableImageView.image = UIImage(named: "checked")
        comparableImageView.tintColor = .systemGreen
        self.view.addSubview(comparableImageView)
        
        shippingImageView.frame = CGRect(x: 20, y: 730, width: 20, height: 20)
        shippingImageView.image = UIImage(systemName: "cube.box")
        shippingImageView.tintColor = .darkGray
        self.view.addSubview(shippingImageView)
    }
    
    private func setupLabels() {
        headerLabel.frame = CGRect(x: 10, y: 100, width: 390, height: 50)
        headerLabel.text = itemsTuple?.subTitle
        headerLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        headerLabel.textAlignment = .center
        headerLabel.textColor = .white
        headerLabel.numberOfLines = 1
        self.view.addSubview(headerLabel)
        
        priceLabel.frame = CGRect(x: 10, y: 130, width: 390, height: 50)
        priceLabel.text = itemsTuple?.price
        priceLabel.textAlignment = .center
        priceLabel.font = descriptionLabel.font.withSize(17)
        priceLabel.textColor = .darkGray
        
        priceLabel.numberOfLines = 1
        self.view.addSubview(priceLabel)
        
        descriptionLabel.frame = CGRect(x: 10, y: 410, width: 390, height: 50)
        descriptionLabel.text = itemsTuple?.subTitle
        descriptionLabel.textAlignment = .center
        descriptionLabel.textColor = .darkGray
        descriptionLabel.font = descriptionLabel.font.withSize(14)
        descriptionLabel.numberOfLines = 1
        self.view.addSubview(descriptionLabel)
        
        firstCompareLabel.frame = CGRect(x: 60, y: 570, width: 100, height: 50)
        firstCompareLabel.text = "Совместимо с"
        firstCompareLabel.textAlignment = .center
        firstCompareLabel.font = descriptionLabel.font.withSize(14)
        firstCompareLabel.textColor = .darkGray
        self.view.addSubview(firstCompareLabel)
        
        secondCompareLabel.frame = CGRect(x: 160, y: 570, width: 200, height: 50)
        secondCompareLabel.text = "MacBook Pro  - Константин"
        secondCompareLabel.textAlignment = .center
        secondCompareLabel.font = descriptionLabel.font.withSize(14)
        secondCompareLabel.textColor = .systemBlue
        self.view.addSubview(secondCompareLabel)
        
        firstShippingLabel.frame = CGRect(x: 60, y: 720, width: 350, height: 30)
        firstShippingLabel.text = "Заказ сегодня в течение дня, доставка:"
        firstShippingLabel.textAlignment = .left
        firstShippingLabel.font = descriptionLabel.font.withSize(14)
        firstShippingLabel.textColor = .white
        self.view.addSubview(firstShippingLabel)
        
        secondShippingLabel.frame = CGRect(x: 60, y: 735, width: 350, height: 30)
        secondShippingLabel.text = "Пт 16 Июля - Бесплатно"
        secondShippingLabel.textAlignment = .left
        secondShippingLabel.font = descriptionLabel.font.withSize(14)
        secondShippingLabel.textColor = .darkGray
        self.view.addSubview(secondShippingLabel)
        
        thirdShippingLabel.frame = CGRect(x: 60, y: 750, width: 350, height: 30)
        thirdShippingLabel.text = "Варианты доставки для местоположения: 142108"
        thirdShippingLabel.textAlignment = .left
        thirdShippingLabel.font = descriptionLabel.font.withSize(14)
        thirdShippingLabel.textColor = .systemBlue
        self.view.addSubview(thirdShippingLabel)
    }
    
    //MARK: selectors
    @objc func imageTapped() {
        let webViewController = WebViewViewController()
        webViewController.tag = itemsTuple?.tag ?? 0
        present(webViewController, animated: true)
    }
}
