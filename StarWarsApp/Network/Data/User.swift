//
//  User.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import Foundation
import Alamofire


struct UserReponse: Decodable {
    
    //code -> propiedad json que es un entero
    let results: User?
}


struct User: Decodable {
    let name: String?
    let height: Int?
    let mass: Int?
    let gender: String?
    
}

