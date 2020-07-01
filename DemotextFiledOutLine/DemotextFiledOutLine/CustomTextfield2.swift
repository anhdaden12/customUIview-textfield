//
//  CustomTextfield2.swift
//  DemotextFiledOutLine
//
//  Created by NgocImac on 7/1/20.
//  Copyright © 2020 Ngoc. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextfield2: UIView {

    @IBOutlet weak var contenView: UIView!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var labelText: UILabel!
    
    var isSelect = false
    var borderSelectedd = UIColor()
    var borderUnSelectedd = UIColor()
    
     @IBInspectable
        var labelString: String {
            set {
                labelText.text = " \(newValue) "
            }
            get {
                return labelText.text ?? ""
            }
        }
    
    @IBInspectable
    var borderRadius: CGFloat {
        set {
            textField.layer.cornerRadius = newValue
        }
        get {
            return textField.layer.cornerRadius
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        set {
            textField.layer.borderWidth = newValue
        }
        get {
            return textField.layer.borderWidth
        }
    }
    
    @IBInspectable
    var borderSelected: UIColor {
        set {
            borderSelectedd = newValue
        }
        get {
            return borderSelectedd
        }
    }
    
    @IBInspectable
       var borderUnSelected: UIColor {
           set {
               borderUnSelectedd = newValue
           }
           get {
               return borderUnSelectedd
           }
       }
    
    
    @IBInspectable
    var textColor: UIColor {
        set {
            textField.textColor = newValue
        }
        get {
            return textField.textColor ?? UIColor.black
        }
    }
    
    @IBInspectable
     var tinColor: UIColor {
        set {
            textField.tintColor = newValue
        }
        get {
            return textField.tintColor ?? UIColor.black
        }
    }
    
    @IBInspectable
    var placeHolderString: String {
        set {
            textField.placeholder = newValue
        }
        get {
            return textField.placeholder ?? ""
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let bundle = Bundle(for: CustomTextfield2.self)
        bundle.loadNibNamed("CustomTextfield2", owner: self, options: nil)
        addSubview(contenView)
        addSubview(textField)
        addSubview(labelText)
        textField.delegate = self
        textField.layer.borderColor = isSelect ? #colorLiteral(red: 0, green: 0.6784313725, blue: 0.937254902, alpha: 1) : #colorLiteral(red: 0.7882352941, green: 0.7882352941, blue: 0.7882352941, alpha: 1)
        textField.textColor = #colorLiteral(red: 0.2039215686, green: 0.2039215686, blue: 0.2039215686, alpha: 1)
        textField.borderStyle = .none

        textField.setLeftPaddingPoints(15)
        textField.translatesAutoresizingMaskIntoConstraints = false
        labelText.translatesAutoresizingMaskIntoConstraints = false
        contenView.frame = self.bounds
        textField.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        textField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        textField.widthAnchor.constraint(equalTo: widthAnchor, constant: 0).isActive = true
        textField.heightAnchor.constraint(equalTo: heightAnchor, constant: 0).isActive = true
        
        labelText.leadingAnchor.constraint(equalTo: textField.leadingAnchor, constant: 25).isActive = true
        labelText.bottomAnchor.constraint(equalTo: textField.topAnchor, constant: 10).isActive = true
        
        
        contenView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }

}

extension CustomTextfield2: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        textField.layer.borderColor = borderSelectedd.cgColor
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        textField.layer.borderColor = borderUnSelectedd.cgColor
        return true
    }
}

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        isSelected = true
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        isSelected = false
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
