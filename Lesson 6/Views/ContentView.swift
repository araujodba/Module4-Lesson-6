//
//  ContentView.swift
//  Lesson 6
//
//  Created by Marcello Lima on 22/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var indexTab = 1
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        TabView {
            
            PersonView()
                .tabItem({
                    Image(systemName: "person.2")
                }).tag(1)
            
            PreferencesView()
                .tabItem({
                    Image(systemName: "gearshape")
                }).tag(2)
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
