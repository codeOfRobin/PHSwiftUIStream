//
//  ContentView.swift
//  Trekr
//
//  Created by Robin Malhotra on 30/12/2020.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding(.horizontal)
                
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ContentView(location: Location.example)
            }
        }
    }
}
