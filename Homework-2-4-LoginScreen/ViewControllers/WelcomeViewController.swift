//
//  WelcomeScreenViewController.swift
//  Homework-2-4-LoginScreen
//
//  Created by Алексей Журкин on 06.12.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var welcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!

    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.login)!\nMy name is \(user.person.name)."
    }
}
