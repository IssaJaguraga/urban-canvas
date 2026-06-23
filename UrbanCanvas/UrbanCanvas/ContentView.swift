//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Issa on 22/06/2026.
//

import SwiftUI

struct ContentView: View {
    @Environment(StreetArtViewModel.self) private var vm
    
    var body: some View {
        NavigationStack {
            List(vm.streetArts) { streetArt in
                NavigationLink {
                    Text(streetArt.title)
                } label: {
                    HStack {
                        Image(streetArt.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text(streetArt.title)
                            HStack() {
                                Image(systemName: "mappin.circle.fill")
                                    .foregroundStyle(.secondText)
                                
                                Text(streetArt.location)
                                    .foregroundStyle(.secondText)
                            }
                        }
                    }
                }
               
            }
            
            .navigationTitle("Liste des Street arts")
        }
    }
}

#Preview {
    ContentView()
        .environment(StreetArtViewModel())
}


