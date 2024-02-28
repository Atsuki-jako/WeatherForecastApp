//
//  Enum.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-06.
//

import Foundation

enum City: String {
    case vancouver = "Vancouver"
    case newYork = "New York"
    case tokyo = "Tokyo"
    case toronto = "Toronto"
    case losangels = "Los Angels"
    case london = "London"
    case sydney = "Sydney"
    case cairo = "Cairo"
    case paris = "Paris"
    case moscow = "Moscow"
    case berlin = "Berlin"
    case chicago = "Chicago"
    case singapole = "Singapore"
    case saopaulo = "Sao Paulo"
    case mexicocity = "Mexico city"
    case tehran = "Tehran"
    case newdelhi = "New Delhi"

    var latitude: Double {
        switch self {
        case .vancouver: return 49.2497
        case .newYork: return 40.7143
        case .tokyo: return 35.6895
        case .toronto: return 43.7001
        case .losangels: return 35.1258
        case .london: return 51.5085
        case .sydney: return -33.8678
        case .cairo: return 30.0626
        case .paris: return 48.8534
        case .moscow: return 55.75
        case .berlin: return 52.5244
        case .chicago: return 41.85
        case .singapole: return 1.2897
        case .saopaulo: return -23.5475
        case .mexicocity: return 19.4285
        case .tehran: return 35.6944
        case .newdelhi: return 28.6358
        }
    }

    var longitude: Double {
        switch self {
        case .vancouver: return -123.1193
        case .newYork: return -74.006
        case .tokyo: return 139.6917
        case .toronto: return -79.4163
        case .losangels: return -117.9859
        case .london: return -0.1257
        case .sydney: return 151.2073
        case .cairo: return 31.2497
        case .paris: return 2.3488
        case .moscow: return 37.625
        case .berlin: return 13.4105
        case .chicago: return -87.65
        case .singapole: return 103.8501
        case .saopaulo: return -46.6361
        case .mexicocity: return -99.1277
        case .tehran: return 51.4215
        case .newdelhi: return 77.2245
        }
    }

    var timeZone: String {
        switch self {
        case .vancouver: return "America/Vancouver"
        case .newYork: return "America%2FNew_York"
        case .tokyo: return "Asia%2FTokyo"
        case .toronto: return "America/Toronto"
        case .losangels: return "America/Los_Angeles"
        case .london: return "Europe%2FLondon"
        case .sydney: return "Australia%2FSydney"
        case .cairo: return "Africa%2FCairo"
        case .paris: return "Europe/Paris"
        case .moscow: return "Europe/Moscow"
        case .berlin: return "Europe%2FBerlin"
        case .chicago: return "America/Chicago"
        case .singapole: return "Asia/Singapore"
        case .saopaulo: return "America/Sao_Paulo"
        case .mexicocity: return "America/Mexico_City"
        case .tehran: return "Asia/Tehran"
        case .newdelhi: return "Asia/Kolkata"
        }
    }
}
