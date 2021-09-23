//
//  PersonView.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import SwiftUI

struct PersonView: View {
    
    @State var model = PersonModel()
    @State var preference = UserPreference()
    var body: some View {
        
        NavigationView {
            
            List(model.persons!) { item in
                    VStack(alignment: .leading) {
                        //Toggle(isOn: $preference.tgName) {
                            Text("Name: \(item.name)")
                        //}
                        //Toggle(isOn: preference.tgAddress) {
                            Text("Address: \(item.address)")
                        //}
                        //Toggle(isOn: preference.tgCompany) {
                            Text("Company: \(item.company)")
                        //}
                        //Toggle(isOn: preference.tgYearsOfExperience) {
                            Text("Years of Experience: \(item.yearsOfExperience)")
                        //}     
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
        PersonView()
    }
}
