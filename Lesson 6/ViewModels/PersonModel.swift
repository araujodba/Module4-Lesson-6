//
//  PersonModel.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import Foundation

class PersonModel: Identifiable, Decodable {
    var persons: [Person]? = [Person]()
    
    init() {
        persons = DataService.getDataLoad()        
        //setting initial preference settigs
    }
}
