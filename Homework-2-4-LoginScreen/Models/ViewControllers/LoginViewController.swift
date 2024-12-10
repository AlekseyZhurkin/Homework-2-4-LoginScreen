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
    
    let user = "1"
    let password = "1"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            ShowAlert(withTitle: "Access Denied!", andMessage: "User name or password is incorrect.\nPlease try again.")
            return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeScreenVC = segue.destination as? WelcomeScreenViewController
        welcomeScreenVC?.user = userNameTextField.text
    }
    
    @IBAction func forgotUsernameButtonAction() {
        ShowAlert(withTitle: "User Name Hint", andMessage: "Try this name: \(user)")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        ShowAlert(withTitle: "Password Hint", andMessage: "Try this password: \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let loginVC = segue.destination as? LoginViewController
        loginVC?.userNameTextField.text = ""
        loginVC?.passwordTextField.text = ""
    }
    
    private func ShowAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTextField.text = ""
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

