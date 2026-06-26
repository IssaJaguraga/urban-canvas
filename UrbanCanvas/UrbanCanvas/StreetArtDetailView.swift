//
//  StreetArtDetailView.swift
//  UrbanCanvas
//
//  Created by Issa on 23/06/2026.
//

import SwiftUI
import MapKit
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
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.mainOrange)
                    .padding(.trailing, 110)
                
                Text(streetArt.description)
                    .font(.footnote)
                    .frame(width: 358, height: 165, alignment: .topLeading)
                    
                
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
                
                }
                .font(.footnote)
                .frame(width: 358, height: 108, alignment: .topLeading)
                
                Map(initialPosition: .region(
                    MKCoordinateRegion(
                        center: CLLocationCoordinate2D(
                            latitude: streetArt.latitude,
                            longitude: streetArt.longitude),
                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))))
                {
                    Marker(streetArt.title, coordinate: CLLocationCoordinate2D(
                        latitude: streetArt.latitude,
                        longitude: streetArt.longitude))
                    .tint(.mainOrange)
                    
                    
                }
                
                .frame(width: 358, height: 157)
                .clipShape(RoundedRectangle(cornerRadius: 26))
                .padding(.top, 14)
                
                
                Text("Image fournie par MauMA")
                    .font(.caption2)
                    .foregroundStyle(.secondText)
                    .padding(.bottom, 30)
                    .padding(.trailing, 210)
                    
                  
            }
        }
        .ignoresSafeArea()
    }
}
#Preview {
    StreetArtDetailView(
        streetArt: StreetArtViewModel().streetArts[1]
    )
}
