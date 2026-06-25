//
//  MapView.swift
//  UrbanCanvas
//
//  Created by Issa on 25/06/2026.
//

import MapKit
import SwiftUI

struct MapView: View {
    @Environment(StreetArtViewModel.self) private var vm
    @State private var selectedStreetArt: StreetArt?
    
    let position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 43.2951, longitude: 5.3746),
            span: MKCoordinateSpan(latitudeDelta: 0.025, longitudeDelta: 0.025)
        )
    )
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                Map(initialPosition: position) {
                    ForEach(vm.streetArts) { streetArt in
                        Annotation("Vieux-Port",coordinate: CLLocationCoordinate2D(
                            latitude: streetArt.latitude,longitude: streetArt.longitude)) {
                                
                                VStack(spacing: 0) {
                                    Image(systemName: "mappin.circle.fill")
                                        .foregroundColor(.secondOrange)
                                        .padding(1)
                                        .background(.white)
                                        .clipShape(Circle())
                                    
                                    Text(streetArt.title)
                                        .foregroundColor(.mainText)
                                        .font(.caption2)
                                        .fontWeight(.regular)
                                        .clipShape(Capsule())
                                        .shadow(color: .black.opacity(0.1), radius: 3)
                                }
                                .onTapGesture {
                                    selectedStreetArt  = streetArt
                                }
                            }
                    }
                }
            }
        }
        .sheet(item: $selectedStreetArt) { streetArt in
            NavigationStack {
                StreetArtDetailView(streetArt: streetArt)
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Button {
                                selectedStreetArt = nil
                            } label: {
                                Image(systemName: "xmark")
                                    .font(.system(size: 17, weight: .medium))
                                    .foregroundStyle(.primary)
                                    .frame(width: 36, height: 36)
                                
                                    .clipShape(Circle())
                            }
                            .buttonStyle(.plain)
                        }
                        ToolbarItem(placement: .principal) {
                            Text(streetArt.title)
                                .fontWeight(.bold)
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink {
                                StreetArtDetailView(streetArt: streetArt)
                            } label: {
                                Image(systemName: "arrow.right")
                                    .font(.system(size: 17, weight: .medium))
                                    .foregroundStyle(.white)
                                    .frame(width: 36, height: 36)
                                    .background(Color.secondOrange)
                                    .clipShape(Circle())
                            }
                            .buttonStyle(.plain)
                            
                        }
                    }
            }
            .presentationDetents([.medium])
        }
    }
}

#Preview {
    MapView()
        .environment(StreetArtViewModel())
}
