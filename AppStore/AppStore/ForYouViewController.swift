//
//  SecondViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 12.07.2021.
//

import UIKit

final class SecondViewController: UIViewController {

    //MARK: Visual components
    private let headerLabel = UILabel()
    private let subTitleLabel = UILabel()
    private let shippingInfoTitleLabel = UILabel()
    private let shippingInfoSubTitleLabel = UILabel()
    private let progressFirstStepLabel = UILabel()
    private let progressSecondStepLabel = UILabel()
    private let progressThirdStepLabel = UILabel()
    private let recommendedLabel = UILabel()
    private let shipNotificationTitleLabel = UILabel()
    private let shipNotificationSubTitleLabel = UILabel()
    private let devicesLabel = UILabel()
    private let profileImageView = UIImageView()
    private let shippingInfoImageView = UIImageView()
    private let shippingInfoRightArrowImageView = UIImageView()
    private let shipNotificationImageView = UIImageView()
    private let shipNotificationRightArrowImageView = UIImageView()
    private let showAllButton = UIButton()
    private let shippingInfoView = UIView()
    private let dividerFirstView = UIView()
    private let dividerSecondView = UIView()
    private let dividerThirdView = UIView()
    private let progressView = UIProgressView()
    
    //MARK: private propeties
    private var imageUserDefaults = UserDefaults()
    private var imageTapGestureRecognizer = UITapGestureRecognizer()
    
    
    //MARK: ViewController's methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupTabBarItem()
        setupImageViews()
        setupLabels()
        setupButtons()
        setupProgressView()
    }

    //MARK: private methods
    private func setupTabBarItem() {
        self.view.backgroundColor = .white
    }
    
<<<<<<< HEAD
    private func setupHeaderLabel() {
=======
    private func setupLabels() {
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        headerLabel.frame = CGRect(x: 20, y: 100, width: 150, height: 50)
        headerLabel.text = "Для вас"
        headerLabel.font = UIFont.boldSystemFont(ofSize: 40)
        view.addSubview(headerLabel)
<<<<<<< HEAD
    }
    
    private func setupSubTitleLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        subTitleLabel.frame = CGRect(x: 20, y: 180, width: 250, height: 50)
        subTitleLabel.text = "Вот что нового"
        subTitleLabel.font = UIFont.boldSystemFont(ofSize: 35)
        view.addSubview(subTitleLabel)
<<<<<<< HEAD
    }
    
    private func setupShippingInfoTitleLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shippingInfoTitleLabel.frame = CGRect(x: 100, y: 280, width: 250, height: 50)
        shippingInfoTitleLabel.text = "Ваш заказ отправлен."
        shippingInfoTitleLabel.textAlignment = .left
        shippingInfoTitleLabel.font = UIFont.boldSystemFont(ofSize: 18)
        view.addSubview(shippingInfoTitleLabel)
<<<<<<< HEAD
    }
    
    private func setupShippingInfoSubTitleLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shippingInfoSubTitleLabel.frame = CGRect(x: 100, y: 305, width: 250, height: 50)
        shippingInfoSubTitleLabel.text = "1 товар, доставка завтра"
        shippingInfoSubTitleLabel.textColor = .lightGray
        shippingInfoSubTitleLabel.textAlignment = .left
        shippingInfoSubTitleLabel.font = UIFont.systemFont(ofSize: 17)
        view.addSubview(shippingInfoSubTitleLabel)
<<<<<<< HEAD
    }
    
    private func setupProgressFirstStepLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        progressFirstStepLabel.frame = CGRect(x: 40, y: 400, width: 130, height: 30)
        progressFirstStepLabel.text = "Обрабатывается"
        progressFirstStepLabel.textAlignment = .left
        progressFirstStepLabel.font = UIFont.boldSystemFont(ofSize: 13)
        view.addSubview(progressFirstStepLabel)
<<<<<<< HEAD
    }
    
    private func setupProgressSecondStepLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        progressSecondStepLabel.frame = CGRect(x: shippingInfoView.bounds.width / 2 - 20, y: 400, width: 100, height: 30)
        progressSecondStepLabel.text = "Отправлено"
        progressSecondStepLabel.textAlignment = .center
        progressSecondStepLabel.font = UIFont.boldSystemFont(ofSize: 13)
        view.addSubview(progressSecondStepLabel)
<<<<<<< HEAD
    }
    
    private func setupProgressThirdStepLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        progressThirdStepLabel.frame = CGRect(x: shippingInfoView.bounds.width - 100, y: 400, width: 100, height: 30)
        progressThirdStepLabel.text = "Доставлено"
        progressThirdStepLabel.textAlignment = .right
        progressThirdStepLabel.textColor = .lightGray
        progressThirdStepLabel.font = UIFont.boldSystemFont(ofSize: 13)
        view.addSubview(progressThirdStepLabel)
<<<<<<< HEAD
    }
    
    private func setupRecommendedLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        recommendedLabel.frame = CGRect(x: 20, y: 500, width: 250, height: 50)
        recommendedLabel.text = "Рекомендуется вам"
        recommendedLabel.textAlignment = .left
        recommendedLabel.textColor = .black
        recommendedLabel.font = UIFont.boldSystemFont(ofSize: 24)
        view.addSubview(recommendedLabel)
<<<<<<< HEAD
    }
    
    private func setupShipNotificationTitleLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shipNotificationTitleLabel.frame = CGRect(x: 90, y: 550, width: 220, height: 80)
        shipNotificationTitleLabel.text = "Получайте новости о своем заказе в режиме реального времени."
        shipNotificationTitleLabel.numberOfLines = 3
        shipNotificationTitleLabel.textAlignment = .left
        shipNotificationTitleLabel.textColor = .black
        shipNotificationTitleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        view.addSubview(shipNotificationTitleLabel)
<<<<<<< HEAD
    }
    
    private func setupShipNotificationSubTitleLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shipNotificationSubTitleLabel.frame = CGRect(x: 90, y: 620, width: 270, height: 60)
        shipNotificationSubTitleLabel.text = "Включите уведомления, чтобы получать новости о своем заказе."
        shipNotificationSubTitleLabel.numberOfLines = 2
        shipNotificationSubTitleLabel.textAlignment = .left
        shipNotificationSubTitleLabel.textColor = .lightGray
        shipNotificationSubTitleLabel.font = UIFont.systemFont(ofSize: 16)
        view.addSubview(shipNotificationSubTitleLabel)
<<<<<<< HEAD
    }
    
    private func setupDevicesLabel() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        devicesLabel.frame = CGRect(x: 20, y: 730, width: 350, height: 60)
        devicesLabel.text = "ваши устройства"
        devicesLabel.textAlignment = .left
        devicesLabel.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(devicesLabel)
    }
    
<<<<<<< HEAD
    private func setupLabels() {
        setupHeaderLabel()
        setupSubTitleLabel()
        setupShippingInfoTitleLabel()
        setupShippingInfoSubTitleLabel()
        setupProgressFirstStepLabel()
        setupProgressSecondStepLabel()
        setupProgressThirdStepLabel()
        setupRecommendedLabel()
        setupShipNotificationTitleLabel()
        setupShipNotificationSubTitleLabel()
        setupDevicesLabel()
    }
    
=======
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
    private func getImageFromUserDefaults(key: String) -> UIImage? {
        if let image = imageUserDefaults.object(forKey: key) as? Data {
            if let returnImage = UIImage(data: image) {
                return returnImage
            }
        } else {
            if let returnImage = UIImage(systemName: "person.fill") {
                return returnImage
            }
        }
        return nil
    }
<<<<<<< HEAD
    
    private func setupProfileImageView() {
        profileImageView.frame = CGRect(x: Int(view.bounds.width - 70), y: 100, width: 50, height: 50)
=======
    private func setupImageViews() {
        profileImageView.frame = CGRect(x: Int(view.bounds.width - 70), y: 100, width: 50, height: 50)
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        profileImageView.image = getImageFromUserDefaults(key: "currentImage")
        profileImageView.backgroundColor = .lightGray
        profileImageView.clipsToBounds = true
        profileImageView.isUserInteractionEnabled = true
        imageTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        profileImageView.addGestureRecognizer(imageTapGestureRecognizer)
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        view.addSubview(profileImageView)
<<<<<<< HEAD
    }
    
    private func setupShippingInfoImageView() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shippingInfoImageView.frame = CGRect(x: 40, y: 300, width: 50, height: 50)
        shippingInfoImageView.image = UIImage(named: "airPodsPro")
        shippingInfoImageView.contentMode = .scaleAspectFill
        view.addSubview(shippingInfoImageView)
<<<<<<< HEAD
    }
    
    private func setupShipNotificationImageView() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shipNotificationImageView.frame = CGRect(x: 20, y: 565, width: 40, height: 40)
        shipNotificationImageView.image = UIImage(named: "photoInfo")
        shipNotificationImageView.tintColor = .systemPink
        shipNotificationImageView.contentMode = .scaleAspectFill
        view.addSubview(shipNotificationImageView)
<<<<<<< HEAD
    }
    
    private func setupShippingInfoRightArrowImageView() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shippingInfoRightArrowImageView.frame = CGRect(x: Int(shippingInfoView.bounds.width - 20), y: 323, width: 17, height: 17)
        shippingInfoRightArrowImageView.image = UIImage(systemName: "chevron.right")
        shippingInfoRightArrowImageView.tintColor = .lightGray
        view.addSubview(shippingInfoRightArrowImageView)
<<<<<<< HEAD
    }
    
    private func setupShipNotificationRightArrowImageView() {
=======
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shipNotificationRightArrowImageView.frame = CGRect(x: 370, y: 610, width: 17, height: 17)
        shipNotificationRightArrowImageView.image = UIImage(systemName: "chevron.right")
        shipNotificationRightArrowImageView.tintColor = .lightGray
        view.addSubview(shipNotificationRightArrowImageView)
    }
    
<<<<<<< HEAD
    private func setupImageViews() {
        setupProfileImageView()
        setupShippingInfoImageView()
        setupShipNotificationImageView()
        setupShippingInfoRightArrowImageView()
        setupShipNotificationRightArrowImageView()
    }
    
=======
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
    private func setupProgressView() {
        progressView.frame = CGRect(x: 40, y: 390, width: Int(view.bounds.width - 80), height: 40)
        progressView.progress = 0.5
        progressView.trackTintColor = .lightGray
        progressView.progressTintColor = .systemGreen
        view.addSubview(progressView)
    }
    
    private func setupButtons() {
        showAllButton.frame = CGRect(x: 275, y: 740, width: 130, height: 50)
        showAllButton.setTitle("Показать все", for: .normal)
        showAllButton.setTitleColor(.systemBlue, for: .normal)
        view.addSubview(showAllButton)
    }
    
<<<<<<< HEAD
    private func setupDividerFirstView() {
        dividerFirstView.frame = CGRect(x: 20, y: 160, width: Int(view.bounds.width - 40), height: 1)
        dividerFirstView.backgroundColor = .separator
        view.addSubview(dividerFirstView)
    }
    
    private func setupShippingInfoView() {
=======
    private func setupViews() {
        dividerFirstView.frame = CGRect(x: 20, y: 160, width: Int(view.bounds.width - 40), height: 1)
        dividerFirstView.backgroundColor = .separator
        view.addSubview(dividerFirstView)
        
        dividerFirstView.frame = CGRect(x: 20, y: 160, width: Int(view.bounds.width - 40), height: 1)
        dividerFirstView.backgroundColor = .separator
        view.addSubview(dividerFirstView)
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        shippingInfoView.frame = CGRect(x: 20, y: 280, width: Int(view.bounds.width - 40), height: 150)
        shippingInfoView.backgroundColor = .white
        shippingInfoView.layer.cornerRadius = 12
        shippingInfoView.layer.shadowOffset = CGSize(width: 2, height: 8)
        shippingInfoView.layer.shadowRadius = 8
        shippingInfoView.layer.shadowOpacity = 0.2
        shippingInfoView.layer.shadowColor = UIColor.black.cgColor
        view.addSubview(shippingInfoView)
<<<<<<< HEAD
    }
    
    private func setupDividerSecondView() {
        dividerSecondView.frame = CGRect(x: 20, y: 380, width: Int(view.bounds.width - 40), height: 1)
        dividerSecondView.backgroundColor = .separator
        view.addSubview(dividerSecondView)
    }
    
    private func setupDividerThirdView() {
=======
        
        dividerSecondView.frame = CGRect(x: 20, y: 380, width: Int(view.bounds.width - 40), height: 1)
        dividerSecondView.backgroundColor = .separator
        view.addSubview(dividerSecondView)
        
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        dividerThirdView.frame = CGRect(x: 20, y: 700, width: Int(view.bounds.width - 40), height: 1)
        dividerThirdView.backgroundColor = .separator
        view.addSubview(dividerThirdView)
    }
    
<<<<<<< HEAD
    private func setupViews() {
        setupDividerFirstView()
        setupShippingInfoView()
        setupDividerSecondView()
        setupDividerThirdView()
    }
    
=======
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
    @objc private func imageTapped() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        imagePickerController.allowsEditing = true
        present(imagePickerController, animated: true)
    }
}

//MARK: UIImagePickerControllerDelegate
extension SecondViewController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let choosenImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        profileImageView.image = choosenImage
    
        if imageUserDefaults.data(forKey: "currentImage") != nil {
            imageUserDefaults.removeObject(forKey: "currentImage")
<<<<<<< HEAD
=======
            print("userDEfaults cleared")
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        }
        
        let dataImageConverted = choosenImage.pngData()
        imageUserDefaults.set(dataImageConverted, forKey: "currentImage")
<<<<<<< HEAD
=======
        print("userDefaults set")
>>>>>>> parent of b75916d (Revert "Сделал страницу "О себе", добавил функцию смены картинки и сохранение её в юзер дефолтс.")
        dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}

extension SecondViewController: UINavigationControllerDelegate {
    
}
