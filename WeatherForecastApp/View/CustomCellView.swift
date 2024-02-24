//
//  TableViewCell.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-06.
//

import SwiftUI

struct CustomCellView: View {
    var cityWeatherData: CityWeatherDataModel
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(cityWeatherData.city.name)
                    .font(.system(size: Constants.Font.fontL, weight: .semibold, design: .default))
                Text("\(cityWeatherData.formattedTimeForWeatherView(value: cityWeatherData.weather.current.time))")
                    .font(.system(size: Constants.Font.fontS, weight: .regular, design: .default))
                Text("\(cityWeatherData.weather.weatherInterPretation(code: cityWeatherData.weather.current.weatherCode))")
                    .font(.system(size: Constants.Font.fontS, weight: .regular, design: .default))
                    .lineLimit(1)
            }
            Spacer()
            VStack {
                Text("\(Int(cityWeatherData.weather.current.temperature2M))°")
                    .font(.system(size: Constants.Font.fontL, weight: .regular, design: .default))
                Spacer().frame(height: Constants.Frame.height2XS)
                HStack {
                    Text("H: \(Int(cityWeatherData.weather.daily.temperature2MMax[0]))°")
                    Text("L: \(Int(cityWeatherData.weather.daily.temperature2MMin[0]))°")
                }
                .font(.system(size: Constants.Font.fontS, weight: .regular, design: .default))
            }
        }
        .padding(.horizontal, Constants.Design.padding)
        .frame(height: Constants.Frame.heightM)
        .background(BackgroundView(viewModel: DetailViewModel(model: cityWeatherData)))
        .cornerRadius(Constants.Design.cornerRadius)
    }
}

#Preview {
    CustomCellView(cityWeatherData: CityWeatherDataModel())
}
