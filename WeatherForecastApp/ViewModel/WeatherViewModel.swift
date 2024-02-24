//
//  WeatherViewModel.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-05.
//

import Foundation
import SwiftUI

class WeatherViewModel: ObservableObject {
    @Published var weatherDataList: [CityWeatherDataModel] = []
    @Published var filteredWeatherDataList: [CityWeatherDataModel] = []
    @Published var textField: String = ""
    
    func fetchWeatherData() async {
        for city in cityData {
            if let cityWeather = try? await ApiManager().getWeatherData(city: city) {
                DispatchQueue.main.async {
                    self.weatherDataList.append(cityWeather)
                }
            }
        }
    }
    func filteredCityName() {
        DispatchQueue.main.async {
            if self.textField.isEmpty {
                self.filteredWeatherDataList = self.weatherDataList
            } else {
                let filteredList = self.weatherDataList.filter { $0.city.name.localizedStandardContains(self.textField) }
                if filteredList.isEmpty {
                    self.filteredWeatherDataList = self.weatherDataList
                } else {
                    self.filteredWeatherDataList = filteredList
                }
            }
        }
    }
}
