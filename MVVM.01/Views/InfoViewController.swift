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
    @IBOutlet var deleteButton: UIButton!
    
    var user = (User.logins[0].age != nil) || (User.logins[0].city != nil) || (User.logins[0].email != nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Имя: \(User.logins[0].login ?? "")"
        cityLabel.text = "Город: \(User.logins[0].city ?? "")"
        ageLabel.text = "Возраст: \(User.logins[0].age ?? "")"
        emailLabel.text = "Email: \(User.logins[0].email ?? "")"
        
        setDeleteButton()
    }
}

extension InfoViewController {
    func setDeleteButton() {
        deleteButton.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        deleteButton.layer.cornerRadius = 10
    }
}
