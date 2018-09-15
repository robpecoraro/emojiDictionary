//
//  EmojiTableViewController.swift
//  emojiDictionary
//
//  Created by admin on 9/13/18.
//  Copyright © 2018 RobPecoraro. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["🔫","😀","🤪","😱","💩","💯","😍","🥑","🌪","⛪️"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)

       cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "segueConnector", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let emojiVC = segue.destination as! emojiDefinitationViewController
        emojiVC.emoji = sender as! String
    }
}
