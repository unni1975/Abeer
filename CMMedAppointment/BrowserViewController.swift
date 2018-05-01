//
//  BrowserViewController.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/30/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import UIKit
import WebKit

class BrowserViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    var webView: WKWebView!
    var urlString:String!
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        view = webView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if((urlString != nil) && urlString.count > 0) {
            let myURL = URL(string: urlString)
            //let myRequest = URLRequest(url: myURL!)
            do {
                var htmlString = try String(contentsOf: myURL!, encoding: String.Encoding.utf8)
                htmlString = htmlString.replacingOccurrences(of: "<header ", with: "<header style=\"display: none;\" ")
                webView.loadHTMLString(htmlString, baseURL: myURL)
            }
            catch {
                print(error)
            }
            //webView.load(myRequest)
        }
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("Loading")
    }
    
}

