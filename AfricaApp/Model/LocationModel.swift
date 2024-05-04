//
//  LocationModel.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 23/04/24.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name : String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //computada
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
