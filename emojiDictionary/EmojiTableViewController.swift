//
//  EmojiTableViewController.swift
//  emojiDictionary
//
//  Created by admin on 9/13/18.
//  Copyright © 2018 RobPecoraro. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emoji = ["🔫","😀","🤪","😱","💩","💯","😍","🥑","🌪"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emoji.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)

       cell.textLabel?.text = emoji[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueConnector", sender: nil)
    }
}
