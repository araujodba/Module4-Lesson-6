//
//  PreferencesView.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import SwiftUI

struct PreferencesView: View {
    
    @State var userPreferenceModel:UserPreferenceModel = UserPreferenceModel()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {

                Toggle("Show Name:", isOn: $userPreferenceModel.userPreference.tgName)
                Toggle("Show address:", isOn: $userPreferenceModel.userPreference.tgAddress)
                Toggle("Show company:", isOn: $userPreferenceModel.userPreference.tgCompany)
                Toggle("Show years of experience:", isOn: $userPreferenceModel.userPreference.tgYearsOfExperience)
                
            }
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
        PreferencesView()
    }
}
