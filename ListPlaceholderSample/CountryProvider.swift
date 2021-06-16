//
//  CountryProvider.swift
//  ListPlaceholderSample
//
//  Created by Anton Paliakou on 6/16/21.
//

import Foundation

protocol CountryProvider {
    func getCountries() -> [Country]
}

final class CountryProviderDefault: CountryProvider {
    
    // MARK: - Public
    
    func getCountries() -> [Country] {
        [
            .init(name: "Poland"),
            .init(name: "Germany"),
            .init(name: "Belarus"),
            .init(name: "Italy"),
            .init(name: "Lithuania"),
            .init(name: "Lithuania"),
            .init(name: "Czech Republic"),
            .init(name: "Finland"),
            .init(name: "Belgium"),
            .init(name: "France"),
            .init(name: "Bulgaria"),
            .init(name: "Netherlands"),
            .init(name: "Switzerland"),
            .init(name: "United Kingdom")
        ]
    }
}
