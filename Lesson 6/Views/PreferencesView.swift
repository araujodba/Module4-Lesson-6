//
//  PreferencesView.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import SwiftUI

struct PreferencesView: View {
    
    @EnvironmentObject var userPreference:UserPreference
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {

                Toggle("Show Name:", isOn: $userPreference.tgName)
                Toggle("Show address:", isOn: $userPreference.tgAddress)
                Toggle("Show company:", isOn: $userPreference.tgCompany)
                Toggle("Show years of experience:", isOn: $userPreference.tgYearsOfExperience)
                
            }.environmentObject(userPreference)
            .font(Font.title.weight(.medium))
            .padding(.horizontal, 30)
            .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            //Image(systemName: "sun.min.fill")
                            Text("Preferences").font(.largeTitle).fontWeight(.bold)
                            
                        }
                    }
                }
        }
    }
}


struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView().environmentObject(UserPreference())
    }
}
