//
//  UrbanCanvasApp.swift
//  UrbanCanvas
//
//  Created by Issa on 22/06/2026.
//

import SwiftUI

@main
struct UrbanCanvasApp: App {
    @State private var streetArtVM = StreetArtViewModel()
    @State private var authorModel = AuthorModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(streetArtVM)
                .environment(authorModel)
                
        }
    }
}
