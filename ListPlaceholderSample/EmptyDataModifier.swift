//
//  EmptyListModifier.swift
//  ListPlaceholderSample
//
//  Created by Anton Paliakou on 6/16/21.
//

import SwiftUI

struct EmptyDataModifier: ViewModifier {
    
    var items: [Any]
    
    @ViewBuilder
    func body(content: Content) -> some View {
        if !items.isEmpty {
            content
        } else {
            Text("No Countries")
                .font(.title)
                .foregroundColor(.red)
        }
    }
}
