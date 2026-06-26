//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Issa on 22/06/2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            
            Tab("Suivi", systemImage: "photo.artframe") {
                StreetArtListView()
            }
            
            Tab("Activités", systemImage: "person.circle") {
                AuthorView()
            }
            
        }
        .tint(.mainOrange)
    }
}

#Preview {
    ContentView()
        .environment(StreetArtViewModel())
        .environment(AuthorModel())
        
}


