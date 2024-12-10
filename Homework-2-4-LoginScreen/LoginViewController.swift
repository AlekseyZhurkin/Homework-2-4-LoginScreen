//
//  ViewController.swift
//  Homework-2-4-LoginScreen
//
//  Created by Алексей Журкин on 06.12.2024.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = "1"
    private let password = "1"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                withTitle: "Access Denied!",
                andMessage: "User name or password is incorrect.\nPlease try again.") {
                    self.passwordTextField.text = ""
                }
            return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeScreenVC = segue.destination as? WelcomeScreenViewController
        welcomeScreenVC?.user = userNameTextField.text
    }
    
    @IBAction func forgotUsernameButtonAction() {
        showAlert(
            withTitle: "User Name Hint",
            andMessage: "Try this name: \(user)"
        )
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(
            withTitle: "Password Hint",
            andMessage: "Try this password: \(password)"
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

