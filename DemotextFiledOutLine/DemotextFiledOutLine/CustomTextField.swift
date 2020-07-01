//
//  CustomTextField.swift
//  DemotextFiledOutLine
//
//  Created by NgocImac on 7/1/20.
//  Copyright © 2020 Ngoc. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class CustomTextField:  UITextField {
    
    var aLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        aLabel.text = "adad"
        addSubview(aLabel)
        aLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        aLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
    }
    
}
