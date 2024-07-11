//
//  User.swift
//  MessengerTutorial
//
//  Created by Rudy Rolland on 04/02/2024.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    var profileImageUrl: String?
}

extension User {
    static let MOCK_USER = User(fullname: "Starlord", email: "starlord@gmail.com", profileImageUrl: "starlord")
}
