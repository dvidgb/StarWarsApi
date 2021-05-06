//
//  DateDecoder.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import Foundation

final class DateDecoder: JSONDecoder{
    
    let dateFormatter = DateFormatter()
    
    override init() {
        super.init()
       
        
        //"2014-12-09T13:50:51.644000Z",
        
                                    //Se corresponde al formato de la
                                    //fecha de arriba
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
        dateDecodingStrategy = .formatted(dateFormatter)
        
    }
}
