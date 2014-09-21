//
//  WebViewTests.swift
//  PragmaticTweets
//
//  Created by Olivier Robert on 19/9/14.
//  Copyright (c) 2014 Olibob Software. All rights reserved.
//

import UIKit
import XCTest
import PragmaticTweets

class WebViewTests: XCTestCase, UIWebViewDelegate {

    var loadedWebViewExpectation : XCTestExpectation?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAutomaticWebLoad() {
        
        // Make sure the twitter web view is loaded when the app starts
        if let viewController = UIApplication.sharedApplication().windows[0].rootViewController as? ViewController {
            viewController.twitterWebView.delegate = self
            self.loadedWebViewExpectation = expectationWithDescription("web view auto load test")
            waitForExpectationsWithTimeout(15.0, handler: nil)
        } else {
            XCTFail("couldn't get root view controller")
        }
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        XCTFail("web view load failed")
        self.loadedWebViewExpectation!.fulfill()
    }

    func webViewDidFinishLoad(let webView: UIWebView) {
        if let webViewContents = webView.stringByEvaluatingJavaScriptFromString("document.documentElement.textContent") {
            if webViewContents != "" {
                self.loadedWebViewExpectation!.fulfill()
            }
        }
    }
}
