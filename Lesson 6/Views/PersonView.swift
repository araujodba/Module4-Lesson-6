//
//  PersonView.swift
//  Lesson 6
//
//  Created by Marcello Lima on 23/09/21.
//

import SwiftUI

struct PersonView: View {
    var model = PersonModel()
    var body: some View {
        
        NavigationView {
            List(model.persons!) { item in
                    VStack(alignment: .leading) {
                                Text("Name: \(item.name)")
                                Text("Address: \(item.address)")
                                Text("Company: \(item.company)")
                                Text("Years of Experience: \(item.yearsOfExperience)")
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
