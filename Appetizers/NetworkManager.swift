//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import Foundation

final class NetworkManager {
    // Create singleton network manager -> Ensure only a single object is created
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com"
    private let appetizerURL = "\(baseURL)/swiftui-fundamentals/appetizers"
    
    private init() {}
    
    // Result has a success case and a failure case that return an array of Appetizer or an Error respectively
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        // Create url task and handle each of the 3 values
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        // Fire off network call
        task.resume()
    }
}
