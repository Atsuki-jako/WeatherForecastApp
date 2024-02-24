//
//  WeatherViewModel.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-05.
//

import Foundation
import SwiftUI

class WeatherViewModel: ObservableObject {
    @Published var model: CityWeatherDataModel = CityWeatherDataModel()
    @Published var weatherDataList: [CityWeatherDataModel] = []
    @Published var filteredWeatherDataList: [CityWeatherDataModel] = []
    @Published var textField: String = ""
    
    func fetchWeatherData() async {
        for city in cityData {
            if let cityWeather = try? await ApiManager().getWeatherData(city: city) {
                self.weatherDataList.append(cityWeather)
            }
        }
    }
    
    func filteredCityName() {
        if textField.isEmpty {
            filteredWeatherDataList = weatherDataList
        } else {
            filteredWeatherDataList = weatherDataList.filter { $0.city.name.localizedStandardContains(textField) }
        }
    }
}
