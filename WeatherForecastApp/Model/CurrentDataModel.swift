//
//  CurrentDataModel.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-05.
//

import Foundation

struct Current: Codable {
    let time: String
    let interval: Int
    let temperature2M: Double
    let weatherCode: Int
    
    enum CodingKeys: String, CodingKey {
        case time, interval
        case temperature2M = "temperature_2m"
        case weatherCode = "weather_code"
    }
}

struct Units: Codable {
    let time: String
    let interval: String?
    let temperature2M, weatherCode: String
    let precipitationProbability: String?
    
    enum CodingKeys: String, CodingKey {
        case time, interval
        case temperature2M = "temperature_2m"
        case weatherCode = "weather_code"
        case precipitationProbability = "precipitation_probability"
    }
}
