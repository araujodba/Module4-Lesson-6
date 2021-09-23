//
//  employeeModel.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import Foundation

class Person: Identifiable, Decodable {
    var id:UUID?
    var name: String
    var address: String
    var company: String
    var yearsOfExperience: Int
}
