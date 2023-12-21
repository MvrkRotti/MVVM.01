//
//  ViewController.swift
//  MVVM.01
//
//  Created by Danilius on 20.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        viewModel.userButtonPressed(login: (loginField.text ?? ""), password: (passField.text ?? ""))
    }
    @IBOutlet var label: UILabel!
    
    var viewModel = ViewModel()
    
    func initialState() {
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if loginField.text == User.logins[0].login || passField.text == User.logins[0].password {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.user = User.logins[0].login ?? " "}
        else {
                let alert = UIAlertController(
                    title: "Sorry!",
                    message: "Check your login or password",
                    preferredStyle: .alert
                )
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
    } //Валидация полей и переход на след вью
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        setButton()
        initialState()
    }
    
    
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.label.text = statusText
            }
        })
        viewModel.statusColor.bind({(statusColor) in
            DispatchQueue.main.async {
                self.label.textColor = statusColor
            }
        })
    }
}

extension ViewController {
    func setButton() {
        loginButton.backgroundColor = #colorLiteral(red: 0.420437498, green: 0.3269933943, blue: 1, alpha: 1) //#colorLiteral()
        loginButton.layer.cornerRadius = 10
    }
} //Настройка кнопки
