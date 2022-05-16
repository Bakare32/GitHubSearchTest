//
//  MaterialTextField.swift
//  GitHubSearchTest
//
//  Created by Bakare Waris on 16/05/2022.
//

import UIKit
import MaterialComponents.MDCFilledTextField

let TRANSPARENT = UIColor.white.withAlphaComponent(0)
let TOAST_SHADOW = UIColor.black.withAlphaComponent(0.24)

extension MDCFilledTextField {
    
    func materialNormal() {
        //layer.shadowColor = UIColor.black.cgColor
        //layer.shadowOpacity = 0.01
        //layer.shadowOffset = .zero
        layer.cornerRadius = 13
        //layer.shadowRadius = 13
        layer.borderWidth = 1.5
        layer.borderColor = TRANSPARENT.cgColor
        layer.backgroundColor = UIColor.gray.cgColor
        sizeToFit()
        setNormalLabelColor(.white, for: .normal)
        setFloatingLabelColor(.white, for: .normal)
        setUnderlineColor(TRANSPARENT, for: .normal)
        setFilledBackgroundColor(UIColor.gray, for: .normal)
    }
    
    func materialActive() {
        setFilledBackgroundColor(UIColor.white, for: .editing)
        tintColor = .black
        //layer.shadowColor = UIColor.black.cgColor
        //layer.shadowOpacity = 0.1
        //layer.shadowOffset = .zero
        layer.cornerRadius = 13
        //layer.shadowRadius = 13
        layer.borderWidth = 1.5
        sizeToFit()
        layer.borderColor = UIColor.green.cgColor
        setNormalLabelColor(.black, for: .normal)
        setUnderlineColor(TRANSPARENT, for: .editing)
        setFloatingLabelColor(.green, for: .editing)
        //self.layer.backgroundColor = WHITE_COLOR.cgColor
    }
    
    func materialWarning() {
        setFilledBackgroundColor(.red, for: .editing)
        tintColor = .red
        //layer.shadowColor = UIColor.black.cgColor
        //layer.shadowOpacity = 0.1
        //layer.shadowOffset = .zero
        layer.cornerRadius = 13
        //layer.shadowRadius = 13
        layer.borderWidth = 1.5
        sizeToFit()
        layer.borderColor = UIColor.red.cgColor
        setNormalLabelColor(.red, for: .normal)
        setUnderlineColor(TRANSPARENT, for: .editing)
        setFloatingLabelColor(.red, for: .editing)
        //self.layer.backgroundColor = WHITE_COLOR.cgColor
    }
    
    func setUp(label: String, placeholder: String, keyType: UIKeyboardType, size: CGFloat? = 15.0) {
        self.label.text = label
        self.placeholder = placeholder
        materialNormal()
        font = UIFont.semiBoldFont(ofSize: size!)
        tintColor = .green
        keyboardType = keyType
    }
    
}

