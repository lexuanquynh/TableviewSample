//
//  FlowerTableViewCell.swift
//  TableViewDemo
//
//  Created by Babie Xcode on 10/28/18.
//  Copyright © 2018 Quynhbkhn. All rights reserved.
//

import UIKit

class FlowerTableViewCell: UITableViewCell {
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var mTitle: UILabel!
    @IBOutlet weak var mDescription: UILabel!
    
    func setData(title: String, description: String) {
        mTitle.text = title
        mDescription.text = description
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
