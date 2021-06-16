//
//  ContentView.swift
//  ListPlaceholderSample
//
//  Created by Anton Paliakou on 6/16/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var countries: [Country] = []
    
    var body: some View {
        NavigationView {
            List(countries) { country in
                Text(country.name)
                    .font(.title)
            }
            .emptyListPlaceholder(countries)
            .padding(.horizontal)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("Add") {
                        countries = CountryProviderDefault().getCountries()
                    }
                    Button("Remove All") {
                        countries = []
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
