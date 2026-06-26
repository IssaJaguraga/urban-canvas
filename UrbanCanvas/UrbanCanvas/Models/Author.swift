//
//  Author.swift
//  UrbanCanvas
//
//  Created by Issa on 26/06/2026.
//

import Foundation

struct Author: Identifiable {

    var id = UUID()
    
    var firstName: String
    var lastName: String
    var age: Int?

    var origin: String
    var style: String
    var image: String?
    var website: String

}
