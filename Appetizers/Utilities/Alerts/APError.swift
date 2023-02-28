//
//  APError.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import Foundation

enum APNetworkError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}

enum APFormError: Error {
    case invalidForm
    case invalidEmail
}
