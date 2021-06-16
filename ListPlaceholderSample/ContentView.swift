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
            listView
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
    
    @ViewBuilder
    var listView: some View {
        if countries.isEmpty {
            emptyListView
        } else {
            List(countries) { country in
                Text(country.name)
                    .font(.title)
            }
        }
    }
    
    var emptyListView: some View {
        ListPlaceholderView()
    }

    var countriesListView: some View {
        List(countries) { country in
            Text(country.name)
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
