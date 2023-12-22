//
//  InfoViewController.swift
//  MVVM.01
//
//  Created by Danilius on 22.12.2023.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var user = (User.logins[0].age != nil) || (User.logins[0].city != nil) || (User.logins[0].email != nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        nameLabel.text = "Имя: \(User.logins[0].login ?? "")"
        cityLabel.text = "Город: \(User.logins[0].city ?? "")"
        ageLabel.text = "Возраст: \(User.logins[0].age ?? "")"
        emailLabel.text = "Email: \(User.logins[0].email ?? "")"
    }
    @IBAction func yesButtonPressed(_ sender: Any) {
    }
    
    @IBAction func noButtonPressed(_ sender: Any) {
    }
}
