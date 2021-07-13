//
//  MenuOptionsTableViewController.swift
//  rando
//
//  Created by Brando Flores on 7/9/21.
//

import UIKit

class MenuOptionsTableViewController: UITableViewController {
    let options = [
        MenuOption(name: "Features", picture: "circles.hexagongrid"),
        MenuOption(name: "Settings", picture: "gearshape.2.fill")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.navigationController?.isNavigationBarHidden = true
        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuOptionCell", for: indexPath) as! MenuOptionTableViewCell
        
        let option = options[indexPath.row]
        cell.name.text = option.name
        cell.picture.image = UIImage(systemName: option.picture)
        
        
        return cell
    }
    
}

