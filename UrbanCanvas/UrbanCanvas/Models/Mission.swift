//
//  Mission.swift
//  UrbanCanvas
//
//  Created by Issa on 27/06/2026.
//

import Foundation

struct Mission: Identifiable {
    var id = UUID()
    var streeArt: StreetArt
    var isDiscoverd: Bool = false
}
