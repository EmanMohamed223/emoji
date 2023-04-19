//
//  emojiTableViewCell.swift
//  EmojiTable
//
//  Created by Eman on 23/01/2023.
//

import UIKit

class emojiTableViewCell: UITableViewCell {

    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    func update(with emoji: Emoji) {
      //  symbolLabel.text = emoji.symbol
      //  nameLabel.text = emoji.name
      //  descriptionLabel.text = emoji.description
    }
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
