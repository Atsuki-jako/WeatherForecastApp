//
//  CityModel.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-06.
//

import Foundation

struct CityModel: Codable, Identifiable, Hashable {
    var id: String { name }
    let name: String
    let latitude: Double
    let longitude: Double
    let timeZone: String
    
    enum CodingKeys: String, CodingKey {
        case name, latitude, longitude
        case timeZone = "time_zone"
    }
    
}
let cityData = [
    CityModel(name: City.vancouver.rawValue, latitude: City.vancouver.latitude, longitude: City.vancouver.longitude, timeZone: City.vancouver.timeZone),
    CityModel(name: City.newYork.rawValue, latitude: City.newYork.latitude, longitude: City.newYork.longitude, timeZone: City.newYork.timeZone),
    CityModel(name: City.toronto.rawValue, latitude: City.toronto.latitude, longitude: City.toronto.longitude, timeZone: City.toronto.timeZone),
    CityModel(name: City.tokyo.rawValue, latitude: City.tokyo.latitude, longitude: City.tokyo.longitude, timeZone: City.tokyo.timeZone),
    CityModel(name: City.losangels.rawValue, latitude: City.losangels.latitude, longitude: City.losangels.longitude, timeZone: City.losangels.timeZone),
    CityModel(name: City.london.rawValue, latitude: City.london.latitude, longitude: City.london.longitude, timeZone: City.london.timeZone),
    CityModel(name: City.sydney.rawValue, latitude: City.sydney.latitude, longitude: City.sydney.longitude, timeZone: City.sydney.timeZone),
    CityModel(name: City.cairo.rawValue, latitude: City.cairo.latitude, longitude: City.cairo.longitude, timeZone: City.cairo.timeZone),
    CityModel(name: City.paris.rawValue, latitude: City.paris.latitude, longitude: City.paris.longitude, timeZone: City.paris.timeZone),
    CityModel(name: City.moscow.rawValue, latitude: City.moscow.latitude, longitude: City.moscow.longitude, timeZone: City.moscow.timeZone),
    CityModel(name: City.berlin.rawValue, latitude: City.berlin.latitude, longitude: City.berlin.longitude, timeZone: City.berlin.timeZone),
    CityModel(name: City.chicago.rawValue, latitude: City.chicago.latitude, longitude: City.chicago.longitude, timeZone: City.chicago.timeZone),
    CityModel(name: City.singapole.rawValue, latitude: City.singapole.latitude, longitude: City.singapole.longitude, timeZone: City.singapole.timeZone),
    CityModel(name: City.saopaulo.rawValue, latitude: City.saopaulo.latitude, longitude: City.saopaulo.longitude, timeZone: City.saopaulo.timeZone),
    CityModel(name: City.mexicocity.rawValue, latitude: City.mexicocity.latitude, longitude: City.mexicocity.longitude, timeZone: City.mexicocity.timeZone),
    CityModel(name: City.tehran.rawValue, latitude: City.tehran.latitude, longitude: City.tehran.longitude, timeZone: City.tehran.timeZone),
    CityModel(name: City.newdelhi.rawValue, latitude: City.newdelhi.latitude, longitude: City.newdelhi.longitude, timeZone: City.newdelhi.timeZone)
]

