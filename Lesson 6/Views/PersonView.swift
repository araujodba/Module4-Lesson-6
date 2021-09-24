//
//  PersonView.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import SwiftUI

struct PersonView: View {
    
    @State var model = PersonModel()
    //@StateObject var preference
    @EnvironmentObject var userPreference:UserPreference
    
    var body: some View {
        
        NavigationView {
            
            List(model.persons!) { item in
                    VStack(alignment: .leading) {
                        if (userPreference.tgName) {
                            Text("Name: \(item.name)")
                        }
                        if (userPreference.tgAddress) {
                            Text("Address: \(item.address)")
                        }
                        if (userPreference.tgCompany) {
                            Text("Company: \(item.company)")
                        }
                        if (userPreference.tgYearsOfExperience) {
                            Text("Years of Experience: \(item.yearsOfExperience)")
                        }
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack {
                                //Image(systemName: "sun.min.fill")
                                Text("People").font(.largeTitle).fontWeight(.bold)
                            }
                        }
                    }
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView().environmentObject(UserPreference())
    }
}
