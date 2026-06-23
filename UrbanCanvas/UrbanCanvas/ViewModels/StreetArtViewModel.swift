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
                  city: "Paris",
                  type: "Mural painting",
                  condition: "Bonne",
                  date: "2021",
                  author: "Artiste urbain inconnu",
                  location: "Rue de Rivoli, Paris 75001",
                  latitude: 48.8606,
                  longitude: 2.3376,
                  description: "Œuvre murale inspirée de la devise républicaine française. Elle met en avant les valeurs de liberté, d’égalité et de fraternité dans un contexte urbain contemporain."
                  
        ),
        StreetArt(title: "La Joconde de Marseille",
                  image: "La-Joconde-de-Marseille",
                  city: "Marseille",
                  type: "Halftone",
                  condition: "Bonne",
                  date: "Mars 2022",
                  author: "KAN DMV",
                  location: "Palais de la Bourse, 13001 Marseille",
                  latitude: 43.2965,
                  longitude: 5.3756,
                  description: "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de Marseille a donné « carte blanche » à l’artiste Kan / DMV pour la réalisation de l’œuvre « La Joconde de Marseille ». Produite et coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Monna Lisa au sein de la cité phocéenne."
        ),
        StreetArt(title: "La Maison de Cécile",
                  image: "La-maison-de-Cécile",
                  city: "Paris",
                  type: "Street mural",
                  condition: "Bonne",
                  date: "2020",
                  author: "Artiste contemporain",
                  location: "Le Marais, Paris 75001",
                  latitude: 48.8600,
                  longitude: 2.3622,
                  description: "Illustration d’une façade résidentielle stylisée, inspirée de l’architecture parisienne et des scènes de vie quotidiennes."
        ),
        StreetArt(title: "Chloé",
                  image: "Chloe",
                  city: "Marseille",
                  type: "Portrait mural",
                  condition: "Bonne",
                  date: "2021",
                  author: "Artiste indépendant",
                  location: "Cours Julien, 13001 Marseille",
                  latitude: 43.2951,
                  longitude: 5.3851,
                  description: "Portrait urbain d’une figure nommé Chloé, mêlant douceur et expression moderne du street art contemporain."
        ),
        StreetArt(title: "PA_278",
                  image: "PA_278",
                  city: "Paris",
                  type: "Abstract street art",
                  condition: "Bonne",
                  date: "2019",
                  author: "Inconnu",
                  location: "Belleville, Paris 75001",
                  latitude: 48.8721,
                  longitude: 2.3768,
                  description: "Composition abstraite basée sur des formes géométriques et des motifs répétitifs intégrés dans l’espace urbain."
        ),
        StreetArt(title: "Chuuuut",
                  image: "Chuuuut",
                  city: "Paris",
                  type: "Conceptual art",
                  condition: "Bonne",
                  date: "2020",
                  author: "Collectif Urbain",
                  location: "Montmartre, Paris 75001",
                  latitude: 48.8867,
                  longitude: 2.3431,
                  description: "Œuvre symbolique jouant sur le silence et la discrétion dans l’espace urbain. Elle invite le spectateur à observer et écouter la ville autrement."
        ),
        StreetArt(title: "Le Tigre et la Cigale",
                  image: "Le-Tigre-et-la-Cigale",
                  city: "Marseille",
                  type: "Figurative mural",
                  condition: "Bonne",
                  date: "2022",
                  author: "Artist français",
                  location: "Vieux-Port, 13001 Marseille",
                  latitude: 43.2969,
                  longitude: 5.3698,
                  description: "Illustration inspirée de la fable classique, représentant un tigre et une cigale dans une scène urbaine expressive."
        )
    ]
}
