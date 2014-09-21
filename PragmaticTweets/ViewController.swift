//
//  ViewController.swift
//  PragmaticTweets
//
//  Created by Olivier Robert on 18/9/14.
//  Copyright (c) 2014 Olibob Software. All rights reserved.
//

import UIKit
import Social

public class ViewController: UIViewController {

    @IBOutlet public var twitterWebView: UIWebView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.reloadTweets()
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleTweetButtonTapped(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            let tweetVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            let message = NSBundle.mainBundle().localizedStringForKey("Test IOS8 twitter API", value: "", table: nil)
            tweetVC.setInitialText(message)
            self.presentViewController(tweetVC, animated: true, completion: nil)
        } else {
            println("Can't send tweet")
        }
    }

    @IBAction func handleShowMyTweetsTapped(sender: UIButton) {
        self.reloadTweets()
    }
    
    func reloadTweets() {
        self.twitterWebView.loadRequest(NSURLRequest(URL: NSURL(string: "https://www.twitter.com/olibob57")))
    }
}

