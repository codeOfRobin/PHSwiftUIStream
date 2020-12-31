//
//  TrekrApp.swift
//  Trekr
//
//  Created by Robin Malhotra on 30/12/2020.
//

import SwiftUI

@main
struct TrekrApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(location: Location.example)
            }
        }
    }
}
