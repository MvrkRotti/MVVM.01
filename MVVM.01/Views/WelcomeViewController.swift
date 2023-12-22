//
//  WelcomeViewController.swift
//  MVVM.01
//
//  Created by Danilius on 20.12.2023.
//

import UIKit
import Foundation

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var cityLabel: UITextField!
    @IBOutlet var ageLabel: UITextField!
    @IBOutlet var emailLabel: UITextField!
    
    var user = User.logins[0].login
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Добро пожаловать, \(user ?? "")!"
    }
    @IBAction func confirmButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = segue.destination as! InfoViewController
        User.logins[0].city = cityLabel.text
        User.logins[0].age = ageLabel.text
        User.logins[0].email = emailLabel.text
        
        
    }
}

