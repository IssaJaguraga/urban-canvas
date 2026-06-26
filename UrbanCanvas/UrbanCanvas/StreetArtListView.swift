//
//  StreetArtListView.swift
//  UrbanCanvas
//
//  Created by Issa on 26/06/2026.
//

import SwiftUI

struct StreetArtListView: View {
    @Environment(StreetArtViewModel.self) private var streetArtVM
    @State private var showFilter = false
    @State private var styleIndex = 0
    
    var body: some View {
        NavigationStack {
            Group {
                if styleIndex == 0 {
                    List(streetArtVM.filteredStreetArts) { streetArt in
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
                                    
                                    HStack {
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
                    
                } else {
                    MapView()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack(alignment: .center, spacing: 4) {
                        
                        Button {
                            styleIndex = 0
                        } label: {
                            Text("Liste")
                                .foregroundStyle(.black)
                                .padding(.horizontal, 45)
                                .padding(4)
                                .background(styleIndex == 0 ? Color.orange : Color.clear)
                                .cornerRadius(100)
                        }
                        
                        Button {
                            styleIndex = 1
                        } label: {
                            Text("Carte")
                                .foregroundStyle(.black)
                                .padding(.horizontal, 45)
                                .padding(4)
                                .background(styleIndex == 1 ? Color.orange : Color.clear)
                                .cornerRadius(100)
                        }
                    }
                    .frame(width: 302, height: 32)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showFilter = true
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                }
            }
            .sheet(isPresented: $showFilter) {
                FilterView(streetArtVM: streetArtVM)
                    .presentationDetents([.height(450)])
            }
        }

    }
}

#Preview {
    StreetArtListView()
        .environment(StreetArtViewModel())
}
