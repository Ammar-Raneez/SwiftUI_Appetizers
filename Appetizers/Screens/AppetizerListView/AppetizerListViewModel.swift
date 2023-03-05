//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import Foundation

// Add stuff to main thread (does what DispatchQueue.main.async does)
@MainActor
final class AppetizerListViewModel: ObservableObject {
    // @Published is required for realtime listening of values. @State is file state
    // Sending data upwards
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizers { result in
//            // Add data to the main running thread (async stuff happen on another thread)
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//
//                case .failure(let error):
//                    switch error {
//                    case .invalidData:
//                        self.alertItem = AlertContext.invalidData
//                    case .invalidURL:
//                        self.alertItem = AlertContext.invalidURL
//                    case .invalidResponse:
//                        self.alertItem = AlertContext.invalidResponse
//                    case .unableToComplete:
//                        self.alertItem = AlertContext.unableToComplete
//
//                    }
//
//                    print(error.localizedDescription)
//                }
//
//                self.isLoading = false
//            }
//        }
//    }
    
    func getAppetizers() {
        isLoading = true
        
        // Enables async-await
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                alertItem = AlertContext.unableToComplete
                isLoading = false
            }
        }
    }
}
