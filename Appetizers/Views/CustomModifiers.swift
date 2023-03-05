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

// Doing this makes it possible to call like every other modifiers
extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle())
    }
}
