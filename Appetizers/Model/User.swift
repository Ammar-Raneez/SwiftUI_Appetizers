//
//  User.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-28.
//

import Foundation

// This user will be saved in local storage --> AppStorage
// Must be encodable and decodable as this is a user-defined object
struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var extraRefills = false
}
