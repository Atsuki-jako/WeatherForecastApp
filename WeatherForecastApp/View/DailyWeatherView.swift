//
//  DailyWeatherView.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-08.
//

import SwiftUI

struct DailyWeatherView: View {
    var cityWeatherData: CityWeatherDataModel
    var body: some View {
        VStack {
            HStack {
                Text(Constants.Text.daily)
                    .foregroundColor(Constants.Colors.fontColor)
                    .bold()
                    .lineLimit(1)
                Spacer().frame(width: Constants.Frame.width)
            }
            ForEach(0..<cityWeatherData.weather.daily.time.count) { daily in
                HStack {
                    let currentDate = cityWeatherData.weather.daily.time[0]
                    let formattedDate = cityWeatherData.formattedTimeForDailyView(value: cityWeatherData.weather.daily.time[daily])
                    Text("\(formattedDate == cityWeatherData.formattedTimeForDailyView(value: currentDate) ? "Today" : formattedDate)")
                        .font(.system(size: Constants.Font.fontM, weight: .bold, design: .default))
                        .foregroundColor(Constants.Colors.fontColor)
                        .bold()
                    Spacer()
                    VStack {
                        Spacer()
                        Image(systemName: "\(cityWeatherData.weather.weatherIconByCode(code: cityWeatherData.weather.daily.weatherCode[daily]))")
                            .resizable()
                            .scaledToFit()
                            .frame(width: Constants.Frame.widthXS, height: Constants.Frame.heightXS)
                            .symbolRenderingMode(.multicolor)
                        Text("\(cityWeatherData.formattedProbabilityForDailyView(value: cityWeatherData.weather.daily.precipitationProbabilityMax[daily]))%")
                            .opacity(cityWeatherData.weather.daily.weatherCode[daily] > 50 && cityWeatherData.formattedProbabilityForDailyView(value: cityWeatherData.weather.daily.precipitationProbabilityMax[daily]) > 0 ? 1 : 0)
                            .foregroundColor(Constants.Colors.fontColor)
                            .font(.system(size: Constants.Font.fontS, weight: .bold, design: .rounded))
                    }
                    Spacer()
                    Group {
                        Text("H: \(Int(cityWeatherData.weather.daily.temperature2MMax[daily]))°")
                        Text("L: \(Int(cityWeatherData.weather.daily.temperature2MMin[daily]))°")
                    }
                    .font(.system(size: Constants.Font.fontM, weight: .bold, design: .default))
                    .foregroundColor(Constants.Colors.fontColor)
                    .bold()
                } 
            }
        }
        .padding()
        .frame(height: Constants.Frame.heightXL)
        .background(Color(Constants.Colors.bgColor).opacity(Constants.Design.opacityM))
        .cornerRadius(Constants.Design.cornerRadius)
        .padding() 
    }
}

#Preview {
    DailyWeatherView(cityWeatherData: CityWeatherDataModel())
}
