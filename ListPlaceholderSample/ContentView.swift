//
//  ContentView.swift
//  ListPlaceholderSample
//
//  Created by Anton Paliakou on 6/16/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var countries: [Country] = CountryProviderDefault().getCountries()
    
    var body: some View {
        List(countries) { country in
            Text(country.name)
                .font(.title)
        }
        .emptyListPlaceholder(countries)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
