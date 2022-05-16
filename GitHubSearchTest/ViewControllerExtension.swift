//
//  ViewControllerExtension.swift
//  GitHubSearchTest
//
//  Created by Bakare Waris on 16/05/2022.
//

import UIKit


extension UIViewController {
    
    func swipeToPop() {
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(popSwipe(_:)))
        rightSwipe.direction = .right
        self.view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func popSwipe(_ sender:UISwipeGestureRecognizer) {
        if sender.direction == .right {
            navigationController?.popViewController(animated: true)
        }
    }
    
}
