//
//  CustomButtons.swift
//  GitHubSearchTest
//
//  Created by Bakare Waris on 16/05/2022.
//

import UIKit

extension UIButton {
    
    func primaryButton(fontSize: CGFloat? = 17) {
        layer.cornerRadius = 13.0
        layer.backgroundColor = UIColor.green.cgColor
        titleLabel?.font = UIFont.semiBoldFont(ofSize: fontSize!)
        titleLabel?.textColor = .white
        alpha = 1.0
    }
}
