//
//  TabBarViewController.swift
//  Homework-2-4-LoginScreen
//
//  Created by Алексей Журкин on 10.12.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}
