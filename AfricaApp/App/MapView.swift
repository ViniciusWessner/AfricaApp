//
//  MapView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 14/04/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // MARK:  propriedades
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK:  body
    var body: some View {
        
        // MARK:  basic map
        //Map(coordinateRegion: $region)
        
        // MARK:  advanced map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            //(A) pin no modelo antigo estatico
            //MapPin(coordinate: item.location, tint: .accentColor)
            
            //(B) novo estilo de pin
            //MapMarker(coordinate: item.location, tint: .accentColor)
            
            //(C) Custom Map Anotation interativo
//            MapAnnotation(coordinate: item.location) {
//                Image(item.image)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            }//: anotatation
            
            //(D) CUSTOM ADVANCED ANOTATION
            MapAnnotation(coordinate: item.location) {
                MapAnotationView(location: item)
            }
           
        })// map
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack{
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                    
                    Divider()
                    
                    HStack{
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                }
                
            } //hstack
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            ,alignment: .top
        )
        
        
    }
}

#Preview {
    MapView()
}
