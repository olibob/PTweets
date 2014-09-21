//
//  ViewController.swift
//  PragmaticTweets
//
//  Created by Olivier Robert on 18/9/14.
//  Copyright (c) 2014 Olibob Software. All rights reserved.
//

import UIKit
import Social

let defaultAvatarURL = NSURL(string: "https://abs.twimg.com/sticky/default_profile_images/default_profile_1_200x200.png")

class ViewController: UITableViewController {

    var parsedTweets: [ParsedTweet] = [
    ParsedTweet(tweetText: "IOS SDK Development", userName:"bob", createdAt: "2014-08-20 16:44:32 EDT", userAvatarURL: defaultAvatarURL),
    ParsedTweet(tweetText: "Math is so not cool", userName:"bob", createdAt: "2014-08-20 17:44:32 EDT", userAvatarURL: defaultAvatarURL),
    ParsedTweet(tweetText: "Swift is tricky", userName:"bob", createdAt: "2014-08-20 18:44:32 EDT", userAvatarURL: defaultAvatarURL)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reloadTweets()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UITableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parsedTweets.count
    }
    
//    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Tweets"
//    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "")
        cell.textLabel?.text = parsedTweets[indexPath.row].tweetText
        return cell
    }
    
    // MARK: Functions
    
    func reloadTweets() {
        self.tableView.reloadData()
    }
    
}

