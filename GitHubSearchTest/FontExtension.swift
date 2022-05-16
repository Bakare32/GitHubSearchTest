//
//  FontExtension.swift
//  GitHubSearchTest
//
//  Created by Bakare Waris on 16/05/2022.
//

import UIKit

extension UIFont {
    private static func customFont(name: String, size: CGFloat) -> UIFont {
        let font = UIFont(name: name, size: size)
        assert(font != nil, "Can't load font: \(name)")
        return font ?? UIFont.systemFont(ofSize: size)
    }
    
    static func regularFont(ofSize size: CGFloat) -> UIFont {
        return UIFont(name: "BasierCircle-Regular", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func mediumFont(ofSize size: CGFloat) -> UIFont {
        //return customFont(name: "WhitneyHTF-Medium", size: size)
        return UIFont(name: "BasierCircle-Medium", size: size) ?? .systemFont(ofSize: size)
    }
    
    static func semiBoldFont(ofSize size: CGFloat) -> UIFont {
        //return customFont(name: "WhitneyHTF-SemiBold", size: size)
        return UIFont(name: "BasierCircle-SemiBold", size: size) ?? .systemFont(ofSize: size)
    }
    
}
