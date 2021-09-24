//
//  Lesson_6App.swift
//  Lesson 6
//
//  Created by Marcello Lima on 22/09/21.
//

import SwiftUI

@main
struct Lesson_6App: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserPreference())
        }
    }
}
