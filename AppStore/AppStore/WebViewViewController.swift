//
//  WebViewViewController.swift
//  AppStore
//
//  Created by Владислав Лазарев on 13.07.2021.
//

import UIKit
import WebKit

final class WebViewViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {

    //MARK: public properties
    var tag = 0
    
    //MARK: private properties
    private var wkWebView = WKWebView()
    private let toolbar = UIToolbar()
    private var urlArray: [String] = []
    
    //MARK: ViewCOntroller's methods
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        wkWebView = WKWebView(frame: .zero, configuration: webConfiguration)
        wkWebView.navigationDelegate = self
        view = wkWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initDatSource()
        setupWebView()
        //setupToolBar()
    }

    override func viewWillAppear(_ animated: Bool) {
        setupToolBar()
    }
    
    //MARK: private methods
    private func setupWebView() {
        if let myURL = URL(string: urlArray[tag]) {
            let myRequest = URLRequest(url: myURL)
            wkWebView.load(myRequest)
        }
    }
    
    private func initDatSource() {
        urlArray.append("https://www.apple.com/shop/product/HMVX2ZM/A/incase-13-compact-sleeve-in-flight-nylon-for-macbook-air-and-macbook-pro?fnode=7a32e277a12e604002895dbd09aad8ecc40837c1d509e3e4275895a44daf88eb00faf715b2fe0727b7d05407c55da4b80553a390ee0f8407b2d3ab27784ca74e66ca481357f331bfa204dbf575")
        urlArray.append("https://www.apple.com/shop/product/MRQM2ZM/A/leather-sleeve-for-13-inch-macbook-pro-saddle-brown?fnode=7a32e277a12e604002895dbd09aad8ecc40837c1d509e3e4275895a44daf88eb00faf715b2fe0727b7d05407c55da4b80553a390ee0f8407b2d3ab27784ca74e66ca481357f331bfa204dbf575beb805011e718f013c996")
        urlArray.append("https://www.apple.com/shop/product/MJ4V3AM/A/40mm-black-unity-sport-band-regular?fnode=8378eb29e8c130b7aeaebc3e86b94c445f867508d3244d8118bb2e2544f8b1054a861154666070f4bbc67b4dcd62b73d9c8b7736446e856c5b093fba3fb2d3038c900489cb588190c2a71a8607fbf466")
        
    }
    
    private func setupToolBar() {
        let size = view.frame.size
        toolbar.frame = CGRect(x: 0, y: size.height - 60,
                               width: size.width, height: 60)
        toolbar.sizeToFit()
        let barButtonItemBack = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(backwardButtonTapped(sender:)))
        let barButtonItemForward = UIBarButtonItem(image: UIImage(systemName: "chevron.forward"), style: .plain, target: self, action: #selector(forwardButtonTapped(sender:)))
        let fixedSpaceBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil)
        let flexibleSpaceBarButtonItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let barButtonItemSend = UIBarButtonItem(image: UIImage(systemName: "arrow.clockwise"), style: .plain, target: self, action: #selector(refreshButtonTapped(sender:)))
        let barButtonItemRefresh = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .plain, target: self, action: #selector(sendButtonTapped(sender:)))
        
        toolbar.items = [barButtonItemBack, fixedSpaceBarButtonItem, barButtonItemForward, flexibleSpaceBarButtonItem, barButtonItemSend, barButtonItemRefresh]
        view.addSubview(toolbar)
    }
    
    //MARK: selectors
    @objc func backwardButtonTapped(sender: UIBarButtonItem) {
        if wkWebView.canGoBack {
            wkWebView.goBack()
        }
    }
    
    @objc func forwardButtonTapped(sender: UIBarButtonItem) {
        if wkWebView.canGoForward {
            wkWebView.goForward()
        }
    }
    
    @objc func refreshButtonTapped(sender: UIBarButtonItem) {
        wkWebView.reload()
    }
    
    @objc func sendButtonTapped(sender: UIBarButtonItem) {
        let activityViewController = UIActivityViewController(activityItems: [urlArray[tag]], applicationActivities: nil)
        self.present(activityViewController, animated: true, completion: nil)
    }
    
}
