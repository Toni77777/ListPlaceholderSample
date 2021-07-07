//
//  ContentView.swift
//  ListPlaceholderSample
//
//  Created by Anton Paliakou on 6/16/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var countries: [Country] = [] // Data source
    
    var body: some View {
        EmptyList(countries, listRowView: { country in
            Text(country.name)
                .font(.title)
        }, placeholderView: {
            Text("No Countries") // Placeholder
                .font(.largeTitle)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
