//
//  Mission.swift
//  UrbanCanvas
//
//  Created by Issa on 27/06/2026.
//

import Foundation

struct Mission: Identifiable {
    let id = UUID()
    let streetArt: StreetArt
    var isDiscovered: Bool = false
}
