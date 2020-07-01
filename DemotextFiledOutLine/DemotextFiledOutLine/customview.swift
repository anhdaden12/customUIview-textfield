//
//  customview.swift
//  DemotextFiledOutLine
//
//  Created by NgocImac on 7/1/20.
//  Copyright © 2020 Ngoc. All rights reserved.
//

import UIKit

@IBDesignable
class customview: UIView {
    
    private lazy var usernameLBL: UILabel! = {
      let label = UILabel()
      label.text = "Username"
      label.translatesAutoresizingMaskIntoConstraints = false
      label.backgroundColor = .white
      return label
    }()

    private lazy var usernameTextField: UITextField! = {
      let textLabel = UITextField()
      textLabel.borderStyle = .roundedRect
      textLabel.translatesAutoresizingMaskIntoConstraints = false
      return textLabel
    }()


    init() {
        super.init(frame: UIScreen.main.bounds)
        addSubview(usernameTextField)
        addSubview(usernameLBL)
        backgroundColor = UIColor(white: 1, alpha: 1)

        configureViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configureViews() {
        
        let margins = self.layoutMarginsGuide
        usernameLBL.leadingAnchor.constraint(equalTo: usernameTextField.leadingAnchor, constant: 10).isActive = true
        usernameLBL.bottomAnchor.constraint(equalTo: usernameTextField.topAnchor, constant: 10).isActive = true
        NSLayoutConstraint.activate([
            usernameTextField.centerXAnchor.constraint(equalTo: margins.centerXAnchor),
            usernameTextField.centerYAnchor.constraint(equalTo: margins.centerYAnchor),
            usernameTextField.widthAnchor.constraint(equalToConstant: 200),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50),
        ])
      }

    }

@IBDesignable
class customUIView: UIView {

    
    var alabel: UILabel {
        let label = UILabel()
        label.text = "Username"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }
    var  atextField:UITextField {
        let textLabel = UITextField()
        textLabel.borderStyle = .roundedRect
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    
    func setup() {
      addSubview(alabel)
      addSubview(atextField)
      backgroundColor = UIColor(white: 1, alpha: 1)
        let margins = self.layoutMarginsGuide
        atextField.centerXAnchor.constraint(equalTo: margins.centerXAnchor).isActive = true
        atextField.centerYAnchor.constraint(equalTo: margins.centerYAnchor).isActive = true
        atextField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        atextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        alabel.leadingAnchor.constraint(equalTo: atextField.leadingAnchor, constant: 10).isActive = true
        alabel.bottomAnchor.constraint(equalTo: atextField.topAnchor, constant: 10).isActive = true
    }
}
