//
//  TabBarController.swift
//  MIT Blueprint
//
//  Created by Kenneth Choi on 2/21/21.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }
    
    func setUpViews() {
        viewControllers = [createTabBarItem(title: "Today", imageName: "star.circle.fill", viewController: SongOfDayViewController()), createTabBarItem(title: "Questions", imageName: "questionmark.circle", viewController: HomeViewController()), createTabBarItem(title: "Recommendations", imageName: "music.note", viewController: SongTableViewController())]
    }
    
    private func createTabBarItem(title: String, imageName: String, viewController: UIViewController) -> UINavigationController {
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(systemName: imageName)
        
        return navController
    }
    
}
