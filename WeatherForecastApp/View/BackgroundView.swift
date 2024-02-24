//
//  BackgroundView.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-07.
//

import SwiftUI

struct BackgroundView: View {
    @StateObject var viewModel: DetailViewModel
    var body: some View {
        VStack {
            Image(viewModel.model.weather.imageByCode(code: viewModel.model.weather.current.weatherCode))
                .resizable()
                .scaledToFill()
                .opacity(Constants.Design.opacityL)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(viewModel: DetailViewModel(model: CityWeatherDataModel()))
}
