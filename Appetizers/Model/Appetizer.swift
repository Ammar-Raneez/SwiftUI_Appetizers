//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import Foundation

// Decodable -> Decode data coming from API
// Encodable -> Encode data to send into API
// Codable -> Combination of both
struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0000,
                                           name: "Test Appetizer",
                                           description: "This is only a test",
                                           price: 9.78,
                                           imageURL: "",
                                           calories: 83,
                                           protein: 7,
                                           carbs: 37)
    static let orderItem1 = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is only a test",
                                           price: 9.78,
                                           imageURL: "",
                                           calories: 83,
                                           protein: 7,
                                           carbs: 37)
    static let orderItem2 = Appetizer(id: 0002,
                                           name: "Test Appetizer",
                                           description: "This is only a test",
                                           price: 9.78,
                                           imageURL: "",
                                           calories: 83,
                                           protein: 7,
                                           carbs: 37)
    static let orderItem3 = Appetizer(id: 0002,
                                           name: "Test Appetizer",
                                           description: "This is only a test",
                                           price: 9.78,
                                           imageURL: "",
                                           calories: 83,
                                           protein: 7,
                                           carbs: 37)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let orders = [orderItem1, orderItem2, orderItem3]
}
