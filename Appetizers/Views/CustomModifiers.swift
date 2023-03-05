//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Ammar on 2023-03-05.
//

import SwiftUI


struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        // apply styles to this content
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

struct StandardImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
        // does not work
//            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 128, height: 90)
            .cornerRadius(8)
    }
}

// Doing this makes it possible to call like every other modifiers
extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle())
    }
}
