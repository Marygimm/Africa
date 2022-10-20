//
//  MapView.swift
//  Africa
//
//  Created by Mary Moreira on 19/10/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    //MARK: - Properties
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.00286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    
        
    //MARK: - Body
    var body: some View {
        //MARK: - No1 Basic Map
//        Map(coordinateRegion: $region)
        
    //MARK: No2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // (A) PIN: OLD STYLE AND STATIC
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKER: NEW STYLE STATIC
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM BASIC ANNOTATION (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            } //: Annotation
        })
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
