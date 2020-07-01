//
//  customUITextField.swift
//  DemotextFiledOutLine
//
//  Created by NgocImac on 7/1/20.
//  Copyright © 2020 Ngoc. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class customUITextField: UITextField {
    
    var alabel = UILabel()
    
    @IBInspectable
    var labelString: String {
        set {
            alabel.text = newValue
            alabel.backgroundColor = .white
            alabel.frame = CGRect(x: 10, y: -10, width: alabel.intrinsicContentSize.width, height: alabel.intrinsicContentSize.height)
            self.addSubview(alabel)
//            alabel.frame = CGRect(x: 10, y: -10, width: alabel.intrinsicContentSize.width, height: alabel.intrinsicContentSize.height)
            bringSubviewToFront(alabel)
//            setup()
        }
        get {
            return alabel.text ?? ""
        }
    }
    
    @IBInspectable
    var borderRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor {
        set {
            layer.borderColor = newValue.cgColor
        }
        get {
            return UIColor(cgColor: layer.borderColor ?? UIColor.clear.cgColor)
        }
    }
    
    func setup() {
        self.backgroundColor = .clear
       
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
}

extension customUITextField: UITextFieldDelegate {
    
}
