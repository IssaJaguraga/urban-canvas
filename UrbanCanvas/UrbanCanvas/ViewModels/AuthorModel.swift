//
//  AuthorModel.swift
//  UrbanCanvas
//
//  Created by Issa on 26/06/2026.
//



import Foundation
import SwiftUI

@Observable
final class AuthorModel {
    
    var authors = [
        Author(firstName: "KAN",
               lastName: "DMV",
               age: 49,
               origin: "France",
               style: "Pointillisme",
               image: nil,
               website: ""
              ),
        Author(firstName: "Kitsune",
               lastName: "Jolene",
               age: 34,
               origin: "Belgique",
               style: "Mural",
               image: "kitsune-jolene",
               website: ""
              ),
        Author(firstName: "Aero",
               lastName: "",
               age: nil,
               origin: "France",
               style: "Aérographe",
               image: "aero",
               website: ""
              ),
        Author(firstName: "Seth",
               lastName: "Globepainter",
               age: 54,
               origin: "France",
               style: "Globepainter",
               image: "seth-globepainter",
               website: ""
              ),
        Author(firstName: "JDL",
               lastName: "",
               age: 30,
               origin: "Pays-Bas",
               style: "Mural",
               image: "jdl",
               website: ""
              ),
        Author(firstName: "Shepard",
               lastName: "Fairey",
               age: 56,
               origin: "USA",
               style: "Mural",
               image: "shepard-fairey",
               website: ""
              )

    ]
}
