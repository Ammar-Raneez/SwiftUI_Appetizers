//
//  LoadingView.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import SwiftUI

// Loading indicator -> Not by default available in SwiftUI till iOS 15.
// These functionality are usually only available in UIKit, Therefore,
// an integration between SwiftUI and UIKit must be created to get its features.
struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = .brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            ActivityIndicator()
        }
    }
}
