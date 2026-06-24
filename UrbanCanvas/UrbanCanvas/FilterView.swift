//
//  FilterView.swift
//  UrbanCanvas
//
//  Created by Issa on 24/06/2026.
//

import SwiftUI

struct FilterView: View {
    @Bindable var vm: StreetArtViewModel
    @Environment(\.dismiss) private var dismiss
    
    let types = ["Tous", "Invaders", "Mosaïques", "Mural", "Stencil", "Calligraphie"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Liste des filtres")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.top, 40)
                .padding(.horizontal, 10)
            
            Text("Choisissez un type d'art")
                .font(.title3)
                .foregroundStyle(.secondary)
                .padding(.horizontal, 10)
               
            ForEach(types, id: \.self) { type in
                Button {
                    vm.selectedType = type
                    dismiss()
                } label: {
                    Text(type)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray4).opacity(0.6))
                        .foregroundStyle(vm.selectedType == type ? .mainOrange : .black)
                        .clipShape(RoundedRectangle(cornerRadius: 100))
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
       
    }
}

#Preview {
    FilterView(vm: StreetArtViewModel())
}
