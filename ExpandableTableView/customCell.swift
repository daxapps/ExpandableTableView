//
//  customCell.swift
//  ExpandableTableView
//
//  Created by Jason Crawford on 7/12/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {
    
    @IBOutlet weak var FirstView: UIView!

    @IBOutlet weak var FirstLabelView: UILabel!
    
    @IBOutlet weak var SecondView: UIView!

    @IBOutlet weak var SecondLabelView: UILabel!
    
    @IBOutlet weak var SecondHeightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var showsDetails = false {
        didSet {
            SecondHeightConstraint.priority = showsDetails ? 250 : 999
        }
    }

}
