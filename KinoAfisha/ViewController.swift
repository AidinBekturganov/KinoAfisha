//
//  ViewController.swift
//  KinoAfisha
//
//  Created by User on 8/13/20.
//  Copyright © 2020 Aidin. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    let u = "https://kinoafisha.ua/ajax/skoro_load"
  
  var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: u)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
