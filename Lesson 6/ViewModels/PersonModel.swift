//
//  PersonModel.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import Foundation

class PersonModel: ObservableObject {
    @Published var persons: [Person]? = [Person]()
    
    init() {
        persons = DataService.getDataLoad()
        //print(persons)
    }
}
