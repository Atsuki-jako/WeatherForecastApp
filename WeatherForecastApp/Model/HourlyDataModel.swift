//
//  HourlyData.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-05.
//

import Foundation

struct Hourly: Codable {
    let time: [String]
    let temperature2M: [Double]
    let precipitationProbability, weatherCode: [Int]
    
    enum CodingKeys: String, CodingKey {
        case time
        case temperature2M = "temperature_2m"
        case precipitationProbability = "precipitation_probability"
        case weatherCode = "weather_code"
    }
}
