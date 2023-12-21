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
    
    var user = User.logins[0].login
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Добро пожаловать, \(user ?? "")!"
    }
}

