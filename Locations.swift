//
//  Locations.swift
//  Trekr
//
//  Created by Robin Malhotra on 31/12/2020.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        self.places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
