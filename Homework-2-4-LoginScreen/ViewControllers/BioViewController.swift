//
//  BioViewController.swift
//  Homework-2-4-LoginScreen
//
//  Created by Алексей Журкин on 10.12.2024.
//

import UIKit

final class BioViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var bioTextView: UITextView!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(user.person.fullName)'s Bio"
        bioTextView.text = user.person.bio
    }
}
