//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    // @Published is required for realtime listening to values. @State is state
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers

                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                        
                    }

                    print(error.localizedDescription)
                }
                
                self.isLoading = false
            }
        }
    }
}
