//
//  DailyDataModel.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-05.
//

import Foundation

struct Daily: Codable {
    let time: [String]
    let weatherCode: [Int]
    let temperature2MMax, temperature2MMin: [Double]
    let precipitationProbabilityMax: [Int]
    
    enum CodingKeys: String, CodingKey {
        case time
        case weatherCode = "weather_code"
        case temperature2MMax = "temperature_2m_max"
        case temperature2MMin = "temperature_2m_min"
        case precipitationProbabilityMax = "precipitation_probability_max"
    }
}

struct DailyUnits: Codable {
    let time, weatherCode, temperature2MMax, temperature2MMin: String
    let precipitationProbabilityMax: String
    
    enum CodingKeys: String, CodingKey {
        case time
        case weatherCode = "weather_code"
        case temperature2MMax = "temperature_2m_max"
        case temperature2MMin = "temperature_2m_min"
        case precipitationProbabilityMax = "precipitation_probability_max"
    }
}
