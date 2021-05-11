//
//  Starship.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import Foundation
import Alamofire




// MARK: - Starships
struct Starship: Decodable {
    let name, model, manufacturer, costInCredits: String?
    let length, maxAtmospheringSpeed, crew, passengers: String?
    let cargoCapacity, consumables, hyperdriveRating, mglt: String?
    let starshipClass: String?
   
    let created, edited: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case name, model, manufacturer
        case costInCredits = "cost_in_credits"
        case length
        case maxAtmospheringSpeed = "max_atmosphering_speed"
        case crew, passengers
        case cargoCapacity = "cargo_capacity"
        case consumables
        case hyperdriveRating = "hyperdrive_rating"
        case mglt = "MGLT"
        case starshipClass = "starship_class"
        case created, edited, url
    }
}

extension Starship: CustomStringConvertible {
    var description: String {
          return "\(name!)"
      }
}
 

