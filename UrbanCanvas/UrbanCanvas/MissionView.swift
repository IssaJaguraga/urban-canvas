//
//  MissionView.swift
//  UrbanCanvas
//
//  Created by Issa on 27/06/2026.
//

import SwiftUI

struct MissionView: View {
    
    @Environment(StreetArtViewModel.self) var streetArtVM
    //    let streetArt: StreetArt
    @State private var missions: [Mission] = []
    
    var body: some View {
        ZStack {
            Color.backgroundGray
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Mission du jour")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondOrange)
                    
                    Text("Partez à la découverte")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.mainText)
                    
                    VStack(alignment: .leading, spacing: 14) {
                        HStack {
                            Text("Progression")
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Text("0 / 5")
                                .foregroundStyle(.secondOrange)
                                .fontWeight(.bold)
                        }
                        
                        Rectangle()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .foregroundStyle(.backgroundGray)
                        
                        Text("0 oeuvre découverte sur 5")
                            .foregroundStyle(.secondText)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.bottom, 12)
                    
                    ForEach(streetArtVM.streetArts.prefix(6)) { streetArt in
                        VStack(alignment: .leading, spacing: 0) {
                            ZStack(alignment: .topTrailing) {
                                Image(streetArt.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 180)
                                    .frame(maxWidth: .infinity)
                                    .clipped()
                                
                                Text("Découverte")
                                    .font(.caption.bold())
                                    .foregroundStyle(.white)
                                    .padding (8)
                                    .background(.green, in: Capsule())
                                    .padding()
                                
                            }
                            VStack(alignment: .leading, spacing: 6) {
                                Text(streetArt.title)
                                    .font(.title3)
                                    .fontWeight(.semibold)

                                Label(streetArt.city, systemImage: "mappin.and.ellipse")
                                    .foregroundStyle(.secondary)
                            }
                            .padding()
                            
                            HStack(spacing: 12) {
                                
                                Button {
                                    
                                } label: {
                                    Text("Voir la fiche")
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 40)
                                        .fontWeight(.semibold)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.backgroundGray)
                                        )
                                .foregroundColor(.black)
                                
                                
                                Button {
                                    
                                } label: {
                                    Text("Découverte")
                                        .frame(maxWidth: .infinity)

                                        .frame(height: 40)
                                        .fontWeight(.semibold)
                                }
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.secondOrange))
                                .foregroundColor(.white)
                            }
                            .padding()
                        }
                        .background(.white)
                        .clipShape(UnevenRoundedRectangle(
                            topLeadingRadius: 20,
                            bottomLeadingRadius: 20,
                            bottomTrailingRadius: 20,
                            topTrailingRadius: 20))
                    }
                    .padding(.bottom, 12)
                }
                
                Button {
                    
                } label: {
                    Text("Nouvelle mission")
                        .frame(maxWidth: .infinity)
                        .frame(height: 20)
                        
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .stroke(.secondOrange, lineWidth: 2))
                .fontWeight(.bold)
                .foregroundColor(.secondOrange)
                .padding(.bottom)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        
    }
       
}

#Preview {
    MissionView()
        .environment(StreetArtViewModel())
}
