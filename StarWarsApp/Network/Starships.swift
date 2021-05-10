//
//  Starships.swift
//  StarWarsApp
//
//  Created by David Bueno on 10/5/21.
//

import Foundation

struct Starships: Decodable {
  let count: Int
  let all: [Starship]
  
  enum CodingKeys: String, CodingKey {
    case count
    case all = "results"
  }
}



