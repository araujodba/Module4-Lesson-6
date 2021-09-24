//
//  Preference.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import Foundation

class UserPreference: ObservableObject {
    var id:UUID = UUID()
    @Published var tgName: Bool = true
    @Published var tgAddress: Bool = true
    @Published var tgCompany: Bool = true
    @Published var tgYearsOfExperience: Bool = true
}
