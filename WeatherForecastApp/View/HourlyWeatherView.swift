//
//  WeeklyWeatherView.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-07.
//

import SwiftUI

struct HourlyWeatherView: View {
    
    var cityWeatherData: CityWeatherDataModel
    
    var body: some View {
        VStack {
            HStack {
                Text(Constants.Text.hourly)
                    .foregroundColor(Constants.Colors.fontColor)
                    .bold()
                    .lineLimit(1)
                Spacer().frame(width: Constants.Frame.width)
            }
            
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: Constants.Design.spaceM) {
                    let currentTimeString = cityWeatherData.weather.current.time
                    let currentTimeInt = cityWeatherData.formattedTimeForHourlyView(value: currentTimeString)
                    if let currentIndex = cityWeatherData.weather.hourly.time.firstIndex(where: { cityWeatherData.formattedTimeForHourlyView(value: $0) == currentTimeInt }) {
                        ForEach(currentIndex..<min(cityWeatherData.weather.hourly.time.count, currentIndex + 30)) { hourly in
                            VStack(spacing: Constants.Design.spaceS) {
                                let hourlyData = (hourly) % 24
                                Text("\(hourly == currentIndex ? "Now" : "\(hourlyData)")")
                                    .font(.system(size: Constants.Font.fontM, weight: .regular, design: .default))
                                    .foregroundColor(Constants.Colors.fontColor)
//                                if hourly == 0 {
//                                    Text("Now")
//                                        .font(.system(size: Constants.Font.fontM, weight: .regular, design: .default))
//                                        .foregroundColor(Constants.Colors.fontColor)
//                                } else {
//                                    let hourlyData = (hourly + currentTimeInt) % 24
//                                    Text("\(hourly == 0 ? "Now" : "\(hourlyData)")")
//                                    Text("\(hourly)")
//                                        .font(.system(size: Constants.Font.fontM, weight: .regular, design: .default))
//                                        .foregroundColor(Constants.Colors.fontColor)
//                                }
                                Image(systemName: cityWeatherData.weather.weatherIconByCode(code: cityWeatherData.weather.hourly.weatherCode[hourly]))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: Constants.Frame.heightXS, height: Constants.Frame.heightXS)
                                    .symbolRenderingMode(.multicolor)
                                Text("\(cityWeatherData.formattedProbabilityForDailyView(value: cityWeatherData.weather.hourly.precipitationProbability[hourly]))%")
                                    .opacity(cityWeatherData.weather.hourly.weatherCode[hourly] > 50 &&  cityWeatherData.formattedProbabilityForDailyView(value: cityWeatherData.weather.hourly.precipitationProbability[hourly]) > 0 ? 1 : 0)
                                    .foregroundColor(Constants.Colors.fontColor)
                                Text("\(Int(cityWeatherData.weather.hourly.temperature2M[hourly]))°")
                                    .font(.system(size: Constants.Font.fontM, weight: .regular, design: .default))
                                    .foregroundColor(Constants.Colors.fontColor)
                            }
                        }
                    }
                    
                }
                .padding()
            }
        }
        .frame(height: Constants.Frame.heightL)
        .background(Color(uiColor: Constants.Colors.bgColor).opacity(Constants.Design.opacityM))
        .cornerRadius(Constants.Design.cornerRadius)
        .padding()
    }
}

#Preview {
    HourlyWeatherView(cityWeatherData: CityWeatherDataModel())
}
