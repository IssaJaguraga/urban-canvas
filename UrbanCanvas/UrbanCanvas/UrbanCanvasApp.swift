//
//  UrbanCanvasApp.swift
//  UrbanCanvas
//
//  Created by Issa on 22/06/2026.
//

import SwiftUI

@main
struct UrbanCanvasApp: App {
    @State private var vm = StreetArtViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(vm)
                
        }
    }
}
