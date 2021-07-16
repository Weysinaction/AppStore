//
//  PageViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 15.07.2021.
//

import UIKit

class PageViewController: UIPageViewController {

    //MARK: view elements
    private let firstImage = UIImage(named: "firstPhoto")
    private let secondImage = UIImage(named: "secondPhoto")
    private let thirdImage = UIImage(named: "thirdPhoto")
    private let buttonSkip = UIButton()
    private let buttonNext = UIButton()
    private let buttonGetStarted = UIButton()
    
    //MARK: private properties
    private var pageViewController = UIPageViewController()
    private var pages = [SinglePageHelper]()
    private var firstPage = SinglePageHelper()
    private var secondPage = SinglePageHelper()
    private var thirdPage = SinglePageHelper()
    private var arraySinglePagesViewController = [SinglePageViewController]()
    private var currentIndex = 0
    
    //MARK: PageViewController's methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: private methods
    private func initPages() {
        guard let imageFirst =  firstImage,
              let imageSecond = secondImage,
              let imageThird = thirdImage else { return }
        
        firstPage = SinglePageHelper(title: "Track Your Cycle", subTitle: "Manage irregular period and learn to improve your period", image: imageFirst, isButtonShow: false)
        secondPage = SinglePageHelper(title: "Plan Your Pregnancy", subTitle: "Favorable day are important, Vestibulum rutrum quam vitae fringilla tiucidunt", image: imageSecond, isButtonShow: false)
        thirdPage = SinglePageHelper(title: "Daily Health Insight", subTitle: "Personal health insight, Vestibulum rutrum quam vitae fringilla tincidunt", image: imageThird, isButtonShow: true)
        
        pages.append(firstPage)
        pages.append(secondPage)
        pages.append(thirdPage)
    }
    
    func setupButtonSkip() {
        buttonSkip.frame = CGRect(x: 40, y: 740, width: 100, height: 50)
        buttonSkip.setTitle("SKIP", for: .normal)
        buttonSkip.isHidden = false
        buttonSkip.addTarget(self, action: #selector(skipButtonTapped), for: .touchUpInside)
        buttonSkip.setTitleColor(.black, for: .normal)
        view.addSubview(buttonSkip)
    }
    
    func setupButtonNext() {
        buttonNext.frame = CGRect(x: 275, y: 740, width: 100, height: 50)
        buttonNext.setTitle("NEXT", for: .normal)
        buttonNext.isHidden = false
        buttonNext.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        buttonNext.setTitleColor(.systemBlue, for: .normal)
        view.addSubview(buttonNext)
    }
    
    func setupButtonGetStarted() {
        buttonGetStarted.frame = CGRect(x: 130, y: 740, width: 150, height: 50)
        buttonGetStarted.setTitle("GET STARTED!", for: .normal)
        buttonGetStarted.isHidden = true
        buttonGetStarted.addTarget(self, action: #selector(getStartedButtonTapped), for: .touchUpInside)
        view.addSubview(buttonGetStarted)
        buttonGetStarted.setTitleColor(.systemBlue, for: .normal)
    }

    private func initViewControllers() {
         for page in pages {
            arraySinglePagesViewController.append(SinglePageViewController(singlePageHelper: page))
         }
    }
    
    @objc func skipButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func nextButtonTapped() {
        setViewControllers([arraySinglePagesViewController[currentIndex + 1]], direction: .forward, animated: true, completion: nil)
        if currentIndex < 1 {
            currentIndex += 1
        }
    }
    
    @objc func getStartedButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation, options: nil)
        let appearance = UIPageControl.appearance(whenContainedInInstancesOf: [UIPageViewController.self])
        appearance.pageIndicatorTintColor = UIColor.gray
        appearance.currentPageIndicatorTintColor = UIColor.systemBlue
        
        initPages()
        initViewControllers()
        setupButtonSkip()
        setupButtonNext()
        setupButtonGetStarted()
        self.view.backgroundColor = .systemBackground
        self.dataSource = self
        self.delegate = self
        setViewControllers([arraySinglePagesViewController[0]], direction: .forward, animated: true, completion: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
//MARK: UIPageViewControllerDataSource
extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? SinglePageViewController else { return nil }
        if let index = arraySinglePagesViewController.firstIndex(of: viewController) {
            currentIndex = index
            if index > 0 {
                buttonNext.isHidden = false
                buttonSkip.isHidden = false
                buttonGetStarted.isHidden = true
                print(currentIndex)
                return arraySinglePagesViewController[index - 1]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? SinglePageViewController else { return nil }
        if let index = arraySinglePagesViewController.firstIndex(of: viewController) {
            if index < arraySinglePagesViewController.count - 1 {
                return arraySinglePagesViewController[index + 1]
            } else {
                buttonNext.isHidden = true
                buttonSkip.isHidden = true
                buttonGetStarted.isHidden = false
            }
        }
        return nil
    }
}

//MARK: UIPageViewControllerDelegate
extension PageViewController: UIPageViewControllerDelegate {
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return arraySinglePagesViewController.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
