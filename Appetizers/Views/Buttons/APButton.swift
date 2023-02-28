//
//  APButton.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-28.
//

import SwiftUI

struct APButton: View {
    // Regular string type doesn't have specifier functionality
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold )
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Hello World")
    }
}
