//
//  EmptyListModifier.swift
//  ListPlaceholderSample
//
//  Created by Anton Paliakou on 6/16/21.
//

import SwiftUI

struct EmptyDataModifier<Placeholder: View>: ViewModifier {
    
    let items: [Any]
    let placeholder: Placeholder
    
    @ViewBuilder
    func body(content: Content) -> some View {
        if !items.isEmpty {
            content
        } else {
            placeholder
        }
    }
}
