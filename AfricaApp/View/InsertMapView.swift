//
//  InsertMapView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 18/04/24.
//

import SwiftUI
import MapKit

struct InsertMapView: View {
    
    // MARK:  propriedades
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination: MapView()) {
                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(Color.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                    }//hstack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }// navigation
                    .padding(12)
                , alignment: .topTrailing
            )// overlay
            .frame(height: 256)
            .cornerRadius(12)
            
    }
}

#Preview {
    InsertMapView()
}
