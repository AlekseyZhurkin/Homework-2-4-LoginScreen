//
//  WelcomeScreenViewController.swift
//  Homework-2-4-LoginScreen
//
//  Created by Алексей Журкин on 06.12.2024.
//

import UIKit

final class WelcomeScreenViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user ?? "")!"
    }
}
