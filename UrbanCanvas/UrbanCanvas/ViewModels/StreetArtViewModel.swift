//
//  StreetArtViewModel.swift
//  UrbanCanvas
//
//  Created by Issa on 22/06/2026.
//

import Foundation
import SwiftUI

@Observable
final class StreetArtViewModel {
    var streetArts = [
        StreetArt(title: "Liberté Égalité Fraternité",
                  image: "liberte-egalite-fraternite",
                  location: "Paris"
        ),
        StreetArt(title: "La Joconde de Marseille",
                  image: "La-Joconde-de-Marseille",
                  location: "Marseille"
        ),
        StreetArt(title: "La Maison de Cécile",
                  image: "La-maison-de-Cécile",
                  location: "Paris"
        ),
        StreetArt(title: "Chloé",
                  image: "Chloe",
                  location: "Marseille"
        ),
        StreetArt(title: "PA_278",
                  image: "PA_278",
                  location: "Paris"
        ),
        StreetArt(title: "Chuuuut",
                  image: "Chuuuut",
                  location: "Paris"
        ),
        StreetArt(title: "Le Tigre et la Cigale",
                  image: "Le-Tigre-et-la-Cigale",
                  location: "Marseille"
        )
    
    
    ]
}
