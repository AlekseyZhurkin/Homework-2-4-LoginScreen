//
//  PersonViewController.swift
//  Homework-2-4-LoginScreen
//
//  Created by Алексей Журкин on 10.12.2024.
//

import UIKit

final class PersonViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var userPhotoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "\(user.person.fullName)"
        
        userPhotoImage.image = UIImage(named: "userPhoto")
        userPhotoImage.layer.borderWidth = 2
        userPhotoImage.layer.cornerRadius = userPhotoImage.frame.width / 2
        userPhotoImage.layer.borderColor = CGColor(
            red: 255,
            green: 255,
            blue: 255,
            alpha: 0.5
        )
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        ageLabel.text = String(user.person.age)
        hobbyLabel.text = user.person.hobby.rawValue
        jobLabel.text = user.person.job.rawValue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.user = user
    }
}
