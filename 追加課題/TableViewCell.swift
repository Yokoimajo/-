//
//  TableViewCell.swift
//  追加課題
//
//  Created by Yoko Imajo on 7/4/16.
//  Copyright © 2016 YokoImajo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var number: Int = 0
    
    @IBOutlet var addLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!

    @IBAction func plus(){
        number = number + 1
        numberLabel.text = String(number)
        color()
    }
    
    func color(){
        if (number > 5){
            numberLabel.textColor = UIColor.redColor()
        }else {
            numberLabel.textColor = UIColor.blackColor()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
