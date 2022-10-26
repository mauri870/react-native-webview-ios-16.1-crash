//
//  ViewController.swift
//  WebViewExample
//
//  Created by Jeff Krantz on 8/1/17.
//  Copyright © 2017 Jeff Krantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    var webView: UIWebView?
    let targetURL: String = "http://localhost:8000"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width: CGFloat! = self.view.bounds.width
        let height: CGFloat! = self.view.bounds.height
        let statusBarHeight: CGFloat! = UIApplication.shared.statusBarFrame.height
        
        self.webView = self.createWebView(frame: CGRect(x: 0, y: statusBarHeight, width: width, height:height))
        
        self.view.addSubview(self.webView!)
        
        let url = NSURL(string: targetURL)
        let request = NSURLRequest(url: url! as URL)
        
        self.webView?.loadRequest(request as URLRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createWebView(frame: CGRect) -> UIWebView {
        let _webView = UIWebView()
        
        _webView.delegate = self;
        
        _webView.frame = frame
        
        return _webView
    }
    
    


}

