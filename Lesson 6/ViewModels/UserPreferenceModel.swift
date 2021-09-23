//
//  UserPreferenceModel.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import Foundation

class UserPreferenceModel: ObservableObject {
    @Published var userPreference:UserPreference
    init() {
        userPreference = UserPreference()
    }
}
