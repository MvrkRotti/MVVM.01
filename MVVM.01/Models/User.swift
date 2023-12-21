//
//  User.swift
//  MVVM.01
//
//  Created by Danilius on 20.12.2023.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
        User.init(login: "Daniss", password: "12345")]
}
