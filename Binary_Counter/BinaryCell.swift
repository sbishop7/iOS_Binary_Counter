//
//  BinaryCell.swift
//  Binary_Counter
//
//  Created by Seth Bishop on 7/13/17.
//  Copyright © 2017 Seth Bishop. All rights reserved.
//

import Foundation

import UIKit

protocol BinaryTableViewCellDelegate: class {
    func valueChangedBy(value: Int)
}

class BinaryCell: UITableViewCell {
    
    @IBOutlet weak var BinaryLabel: UILabel!
    
    weak var delegate: BinaryTableViewCellDelegate?
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        let value = Int(BinaryLabel.text!)
        
        delegate?.valueChangedBy(value: value!)
    }
    
    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        
        let value = 0 - Int(BinaryLabel.text!)!
        
        delegate?.valueChangedBy(value: value)
    }
    
    
}
