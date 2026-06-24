//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by Issa on 22/06/2026.
//

import SwiftUI

struct ContentView: View {
    @Environment(StreetArtViewModel.self) private var vm
    @State private var showFilter = false
    
    var body: some View {
        NavigationStack {
            List(vm.filteredStreetArts) { streetArt in
                NavigationLink {
                    StreetArtDetailView(streetArt: streetArt)
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
                                
                                Text(streetArt.city)
                                    .foregroundStyle(.secondText)
                            }
                        }
                    }
                }
            }
            
            .navigationTitle("Liste des Street arts")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                       showFilter = true
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                }
            }
            .sheet(isPresented: $showFilter) {
                FilterView(vm: vm)
                    .presentationDetents([.height(450)])
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(StreetArtViewModel())
}


