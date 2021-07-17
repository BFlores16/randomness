//
//  FeaturesTableViewController.swift
//  rando
//
//  Created by Brando Flores on 7/16/21.
//

import UIKit

class FeaturesTableViewController: UITableViewController {
    
    let options = [
        FeatureOption(name: "RandomNumber", picture: "number")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as! FeatureTableViewCell
        
        let option = options[indexPath.row]
        cell.name.text = option.name
        cell.picture.image = UIImage(systemName: option.picture)
        
        return cell
    }

}
