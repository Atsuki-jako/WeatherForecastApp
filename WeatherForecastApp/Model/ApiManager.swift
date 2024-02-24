//
//  ApiManager.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-08.
//

import Foundation

struct ApiManager {
    
    private func getUrlRequest(city: CityModel) -> URLRequest{
        let url = URL.init(string: "https://api.open-meteo.com/v1/forecast?latitude=\(city.latitude)&longitude=\(city.longitude)&current=temperature_2m,weather_code&hourly=temperature_2m,precipitation_probability,weather_code&daily=weather_code,temperature_2m_max,temperature_2m_min,precipitation_probability_max&timezone=\(city.timeZone)")!
        
        var urlReq = URLRequest(url: url)
        urlReq.timeoutInterval = 10
        urlReq.httpMethod = "GET"
        urlReq.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return urlReq
    }
    func getWeatherData(city: CityModel) async throws -> CityWeatherDataModel? {
        do {
            let (data, _) = try await URLSession.shared.data(for: self.getUrlRequest(city: city))
            let result = WeatherDataParser().parse(data: data, city: city)
            return result
        } catch let error {
            print("Decoding Error: \(error)")
            throw error
        }
    }
}

class WeatherDataParser {
    func parse(data: Data, city: CityModel) -> CityWeatherDataModel? {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(WeatherModel.self, from: data) else {
            return nil }
        let cityData = CityWeatherDataModel(city: city, weather: decodedData)
        return cityData
    }
}
