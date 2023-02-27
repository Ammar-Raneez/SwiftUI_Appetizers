//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Ammar on 2023-02-27.
//

import SwiftUI

@main // -> Signifies the start of an application
// main function must be run. Called within the App protocol

struct AppetizersApp: App {
    // scene builder instead of view builder. Scene -> Window of app that can have multiple views
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
        }
    }
}
