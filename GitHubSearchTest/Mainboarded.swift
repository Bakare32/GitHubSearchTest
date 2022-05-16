//
//  Mainboarded.swift
//  GitHubSearchTest
//
//  Created by Bakare Waris on 16/05/2022.
//

import UIKit

protocol Mainboarded {
    static func instantiate() -> Self
}

extension Mainboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}

