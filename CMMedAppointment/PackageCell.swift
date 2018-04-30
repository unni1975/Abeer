//
//  PackageCell.swift
//  CMMedAppointment
//
//  Created by Unni K S on 4/30/18.
//  Copyright © 2018 calmove. All rights reserved.
//

import UIKit

class PackageCell: UITableViewCell {
    @IBOutlet weak var numberLabel:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        numberLabel.layer.cornerRadius = 20
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    
    
}
