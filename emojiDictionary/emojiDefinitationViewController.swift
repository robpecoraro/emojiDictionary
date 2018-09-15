//
//  emojiDefinitationViewController.swift
//  emojiDictionary
//
//  Created by admin on 9/14/18.
//  Copyright © 2018 RobPecoraro. All rights reserved.
//

import UIKit

class emojiDefinitationViewController: UIViewController {

    @IBOutlet var emojiIcon: UILabel!
    @IBOutlet var emojiDef: UILabel!
    
    var emoji = ""
 //   "🔫","😀","🤪","😱","💩","💯","😍","🥑","🌪","⛪️"
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiIcon.text = emoji
        switch emoji {
        case "🔫":
            emojiDef.text = "This is a water gun."
        case "😀":
            emojiDef.text = "This is a smiley face."
        case "🤪":
            emojiDef.text = "This is a crazy face."
        case "😱":
            emojiDef.text = "This is a screaming face."
        case "💩":
            emojiDef.text = "This is poop."
        case "💯":
            emojiDef.text = "This is 100."
        case "😍":
            emojiDef.text = "This is heart eyes."
        case "🥑":
            emojiDef.text = "This is an avocado."
        case "🌪":
            emojiDef.text = "This is a tornado."
        case "⛪️":
            emojiDef.text = "This is a church"
        default:
            emojiDef.text = "Error"
        }
        
      
    }
}
