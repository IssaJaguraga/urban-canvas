//
//  StreetArt.swift
//  UrbanCanvas
//
//  Created by Issa on 22/06/2026.
//

import Foundation

struct StreetArt : Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var city: String
    
    var type: String
    var condition: String
    var date: String
    var author: String
    
    var location: String
    var latitude: Double
    var longitude: Double
    var description: String
}


