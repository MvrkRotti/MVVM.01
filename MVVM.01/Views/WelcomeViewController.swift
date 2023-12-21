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
    
    var user = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Добро пожаловать, \(user)!"
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
}

