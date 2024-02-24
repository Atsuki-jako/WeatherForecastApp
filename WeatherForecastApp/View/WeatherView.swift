//
//  WeatherView.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-05.
//

import SwiftUI

struct WeatherView: View {
    @StateObject var viewModel: WeatherViewModel = WeatherViewModel()
    var body: some View {
        NavigationStack {
            VStack() {
                TextField(Constants.Text.textField, text: $viewModel.textField)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, Constants.Design.padding)
                    .onChange(of: viewModel.textField) {
                        viewModel.filteredCityName()
                    }
                List {
                    ForEach(viewModel.filteredWeatherDataList.isEmpty ? viewModel.weatherDataList : viewModel.filteredWeatherDataList) { city in
                        ZStack {
                            CustomCellView(cityWeatherData: city)
                            
                            NavigationLink {
                                DetailView(viewModel: DetailViewModel(model: city))
                            }label: {
                                
                            }
                            .opacity(Constants.Design.opacityS)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
            .navigationTitle(Constants.Text.title)
        }
        .task {
            await viewModel.fetchWeatherData()
        }
    }
}

#Preview {
    WeatherView()
    
}
