//
//  FeatureTableViewCell.swift
//  rando
//
//  Created by Brando Flores on 7/16/21.
//

import UIKit

class FeatureTableViewCell: UITableViewCell {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
