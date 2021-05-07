//
//  NetworkingProvider.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import Foundation

import Alamofire

final class NetworkingProvider{
    
    //constate estática shared esto es un estándar en swift
    //es una instancia compartida durante toda la apliación
    //que será igual a nuestra clase
    
    static let shared = NetworkingProvider()
    
    //constante privada de la parte de la url que no cambia
    //la url va a ser un String
    //MUY IMPORTANTE EL ÚLTIMO SLASH /
    
    private let kBaseUrl = "https://swapi.dev/api/"
    private let kStatusOk = 200...299
    
    
    //función para obtener los datos de un persona
    
    func getUser(id: Int, succes: @escaping (_ user: User) -> (), failure: @escaping (_ error: Error?) -> ())    {
        
        let url = "\(kBaseUrl)people/\(id)"
        
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: User.self) {
           response in
            
            //comprobación de si la respuesta es correcta
            if let user = response.value{
                succes(user)
            }else{
                failure(response.error)
            }
            
        }
    }//fin función
    
    func getStarship(id: Int, succes: @escaping (_ starship: Starships) -> (), failure: @escaping (_ error: Error?) -> ())    {
        
        let url = "\(kBaseUrl)starships/\(id)"
        
        AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: Starships.self) {
           response in
            
            //comprobación de si la respuesta es correcta
            if let star = response.value{
                succes(star)
            }else{
                failure(response.error)
            }
            
        }
    }//fin función
    
    
    
}


