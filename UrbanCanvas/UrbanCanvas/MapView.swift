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
                        Annotation(
                            "",
                            coordinate: CLLocationCoordinate2D(
                                latitude: streetArt.latitude,
                                longitude: streetArt.longitude
                            )
                        ) {
                         
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
            }
            .presentationDetents([.medium])
//        .toolbar {
//            ToolbarItem(placement: .topBarLeading) {
//                Button {
//                    dismiss()
//                } label: {
//                    Image(systemName: "xmark")
//                        .font(.title2)
//                        .foregroundStyle(.secondText)
//                }
//            }
//            ToolbarItem(placement: .topBarTrailing) {
//                NavigationLink {
//                    StreetArtDetailView(streetArt: streetArt)
//                } label: {
//                    Image(systemName: "arrow.right")
//                        .font(.title2)
//                        .foregroundStyle(.mainOrange)
//                }
//            }
//            
//        }
        }

            
        }
    }


#Preview {
    MapView()
        .environment(StreetArtViewModel())
}
