//
//  ViewController.swift
//  Homework-2-4-LoginScreen
//
//  Created by Алексей Журкин on 06.12.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print("\(touches)")
        self.view.endEditing(true)
    }
}

