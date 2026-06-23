//
//  StreetArtDetailView.swift
//  UrbanCanvas
//
//  Created by Issa on 23/06/2026.
//

import SwiftUI

struct StreetArtDetailView: View {
    let streetArt: StreetArt
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16)  {
                
                Image(streetArt.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 411, height: 278)
                    .clipped()
                    .opacity(0.6)
                   
                Text(streetArt.title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.mainOrange)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Text(streetArt.description)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                VStack(alignment: .leading){
                    HStack {
                        Text("Type :")
                            .fontWeight(.bold)
                        Text(streetArt.type)
                    }
                    
                    HStack {
                        Text("Condition :")
                            .fontWeight(.bold)
                        Text(streetArt.condition)
                    }
                    
                    HStack {
                        Text("Date :")
                            .fontWeight(.bold)
                        Text(streetArt.date)
                    }
                    
                    HStack {
                        Text("Auteur :")
                            .fontWeight(.bold)
                        Text(streetArt.author)
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Localisation :")
                                .fontWeight(.bold)
                            Text(streetArt.location)
                        }
                        Text("(Latitude: \(streetArt.latitude), Longitude: \(streetArt.longitude))")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea()
    }
}
#Preview {
    StreetArtDetailView(
        streetArt: StreetArtViewModel().streetArts[0]
    )
}
