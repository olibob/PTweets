//
//  ParsedTweetCell.swift
//  PragmaticTweets
//
//  Created by Olivier Robert on 21/9/14.
//  Copyright (c) 2014 Olibob Software. All rights reserved.
//

import UIKit

class ParsedTweetCell: UITableViewCell {
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetTextLabel: UILabel!
    @IBOutlet weak var createdAtLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
