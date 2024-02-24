//
//  WeatherModel.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-05.
//

import Foundation

struct WeatherModel: Codable {
    let latitude, longitude, generationtimeMS: Double
    let utcOffsetSeconds: Int
    let timezone, timezoneAbbreviation: String
    let elevation: Int
    let currentUnits: Units
    let current: Current
    let hourlyUnits: Units
    let hourly: Hourly
    let dailyUnits: DailyUnits
    let daily: Daily
    
    enum CodingKeys: String, CodingKey {
        case latitude, longitude
        case generationtimeMS = "generationtime_ms"
        case utcOffsetSeconds = "utc_offset_seconds"
        case timezone
        case timezoneAbbreviation = "timezone_abbreviation"
        case elevation
        case currentUnits = "current_units"
        case current
        case hourlyUnits = "hourly_units"
        case hourly
        case dailyUnits = "daily_units"
        case daily
    }
    
    
    func weatherInterPretation(code: Int) -> String {
        switch code {
        case 0: return "Clear sky"
        case 1,2,3: return "Mainly clear, partly cloudy"
        case 45,48: return "Fog"
        case 51,53,55: return "Drizzle"
        case 56,57: return "Freezing Drizzle"
        case 61,63,65: return "Rain"
        case 66,67: return "Freezing Rain"
        case 71,73,75: return "Snow fall"
        case 77: return "Snow grains"
        case 80,81,82: return "Rain showers"
        case 85,86: return "Snow showers"
        case 95: return "Thunderstorm"
        case 96,99: return "Thunderstorm"
        default: return "Unknown"
        }
    }
    func imageByCode(code: Int) -> String {
        switch code {
        case 0: return "Clear"
        case 1,2,3: return "MainlyClear"
        case 45,48: return "Fog"
        case 51,53,55, 56,57: return "Drizzle"
        case 61,63,65,66,67,80,81,82: return "Rain"
        case 71,73,75,77,85,86: return "Snow"
        case 95,96,99: return "Thunderstorm"
        default: return "Unknown"
        }
    }
    
    func weatherIconByCode(code: Int) -> String {
        switch code {
        case 0: return "sun.max.fill"
        case 1,2,3: return "cloud.sun.fill"
        case 45,48: return "smoke.fill"
        case 51,53,55, 56,57: return "cloud.drizzle.fill"
        case 61,63,65,66,67,80,81,82: return "cloud.rain.fill"
        case 71,73,75,77,85,86: return "cloud.snow.fill"
        case 95,96,99: return "cloud.bolt.rain.fill"
        default: return "rainbow"
        }
    }
}





