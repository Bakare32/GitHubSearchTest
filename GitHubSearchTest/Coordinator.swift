//
//  Coordinator.swift
//  GitHubSearchTest
//
//  Created by Bakare Waris on 16/05/2022.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
