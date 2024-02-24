//
//  DetailView.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-06.
//

import SwiftUI

struct DetailView: View {
    @StateObject var viewModel: DetailViewModel
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                VStack(alignment: .center) {
                    Text("\(viewModel.model.city.name)")
                        .font(.system(size: Constants.Font.fontXL, weight: .medium, design: .rounded))
                    Text("\(Int(viewModel.model.weather.current.temperature2M))°")
                        .font(.system(size: Constants.Font.font2XL, weight: .medium, design: .rounded))
                    Text("\(viewModel.model.weather.weatherInterPretation(code: viewModel.model.weather.current.weatherCode))")
                        .font(.system(size: Constants.Font.fontM, weight: .medium, design: .default))
                        .lineLimit(1)
                    HStack {
                        Group {
                            Text("H: \(Int(viewModel.model.weather.daily.temperature2MMax[0]))°")
                            Text("L: \(Int(viewModel.model.weather.daily.temperature2MMin[0]))°")
                        }
                        .font(.system(size: Constants.Font.fontL, weight: .regular, design: .rounded))
                    }
                }
                HourlyWeatherView(cityWeatherData: viewModel.model)
                DailyWeatherView(cityWeatherData: viewModel.model)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(BackgroundView(viewModel: viewModel))
    }
}
#Preview {
    DetailView(viewModel: DetailViewModel(model: CityWeatherDataModel()))
}
