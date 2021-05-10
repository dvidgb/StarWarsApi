//
//  User.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import Foundation
import Alamofire

// MARK: - Welcome
struct User: Decodable {
    let name, height, mass, hairColor: String?
    let skinColor, eyeColor, birthYear, gender: String?
    let homeworld: String?
    let created, edited: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case name, height, mass
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender, homeworld,created, edited, url
    }
}
