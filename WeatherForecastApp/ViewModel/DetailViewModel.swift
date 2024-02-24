//
//  DetailViewModel.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-07.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var model: CityWeatherDataModel = CityWeatherDataModel()
    
    init(model: CityWeatherDataModel) {
        self.model = model
    }
}
