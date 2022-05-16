//
//  Maincoordinator.swift
//  GitHubSearchTest
//
//  Created by Bakare Waris on 16/05/2022.
//
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeVC.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func popController(animated: Bool? = true) {
        navigationController.popViewController(animated: animated!)
    }
    
    func openDetailsVC(query: String) {
        let vc = DetailsVC.instantiate()
        vc.coordinator = self
        vc.query = query
        navigationController.pushViewController(vc, animated: false)
    }
}
