//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            Text("Appetizer List View")
                .navigationTitle("Appetizers")
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
