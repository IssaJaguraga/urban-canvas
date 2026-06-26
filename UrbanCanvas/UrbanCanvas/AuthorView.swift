//
//  AuthorView.swift
//  UrbanCanvas
//
//  Created by Issa on 26/06/2026.
//

import SwiftUI

struct AuthorView: View {
    @Environment(AuthorModel.self) private var authorModel
    var body: some View {
        ZStack {
            Color.backgroundGray
                .ignoresSafeArea()
            ScrollView {
                LazyVGrid(
                    columns: [
                        GridItem(.flexible(), spacing: 16),
                        GridItem(.flexible(), spacing: 16)
                    ],
                    spacing: 16
                ) {
                    ForEach(authorModel.authors) { author in
                        VStack(spacing: 0) {
                            if let image = author.image {
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 65, height: 65)
                                    .clipShape(Circle())
                                    .padding(.top, 14)
                                    .padding(.bottom, 13)
                            } else {
                                Image(systemName: "person.slash.fill")
                                    .font(.largeTitle)
                                    .foregroundStyle(.black)
                                    .frame(width: 65, height: 65)
                                    .background(.backgroundGray)
                                    .clipShape(Circle())
                                    .padding(.top, 14)
                                    .padding(.bottom, 13)
                            }
                            HStack(spacing: 4)  {
                                Text(author.firstName)
                                Text(author.lastName)
                            }
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                            .foregroundStyle(.mainOrange)
                            .padding(.bottom, 8)
                            
                            VStack(alignment: .center) {
                                HStack(spacing: 4) {
                                    Text("Age :")
                                        .font(.system(size: 11))
                                        .fontWeight(.bold)
                                    Text(author.age != nil ? "\(author.age!) ans" : "NC")
                                }
                                HStack (spacing: 4){
                                    Text("Origines : ")
                                        .fontWeight(.bold)
                                    Text(author.origin)
                                }
                                
                                HStack (spacing: 4) {
                                    Text("Style :")
                                        .fontWeight(.bold)
                                    Text(author.style)
                                }
                                
                                Button {
                                    
                                } label: {
                                    Text("Site Web")
                                        .frame(width: 136, height: 26)
                                        .foregroundStyle(.white)
                                }
                                .background(.secondOrange)
                                .cornerRadius(26)
                                .padding(.top, 13)
                            }
                            .font(.system(size: 11))
                        }
                        .frame(width: 175, height: 235)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 26))
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    AuthorView()
        .environment(AuthorModel())
}
