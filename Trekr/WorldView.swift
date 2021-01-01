//
//  WorldView.swift
//  Trekr
//
//  Created by Robin Malhotra on 31/12/2020.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: locations.places, annotationContent: {
                location in
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10.0)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3.0)
                }
            })
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
