//
//  Constants.swift
//  WeatherForecastApp
//
//  Created by Atsuki Jako on 2024-02-10.
//

import Foundation
import SwiftUI


struct Constants {
    
    struct Colors {
        static let fontColor: Color = .white
        static let bgColor: Color = .secondary
    }
    
    struct Text {
        static let title: String = "Weather Forecast App"
        static let hourly: String = "HOURLY FORECAST"
        static let daily: String = "DAILY FORECAST"
        static let textField: String = "Enter a city name"
    }
    
    struct Font {
        static let fontS: CGFloat = 17
        static let fontM: CGFloat = 27
        static let fontL: CGFloat = 30
        static let fontXL: CGFloat = 50
        static let font2XL: CGFloat = 80
    }
    
    struct Design {
        static let cornerRadius: CGFloat = 20
        static let padding: CGFloat = 20
        static let spaceS: CGFloat = 10
        static let spaceM: CGFloat = 20
        static let opacityS: CGFloat = 0
        static let opacityM: CGFloat = 0.6
        static let opacityL: CGFloat = 0.6
    }
    
    struct Frame {
        static let height2XS: CGFloat = 10
        static let heightXS: CGFloat = 37
        static let heightS: CGFloat = 50
        static let heightM: CGFloat = 100
        static let heightL: CGFloat = 250
        static let heightXL: CGFloat = 650
        
        static let widthXS: CGFloat = 37
        static let width: CGFloat = 170
        
    }
}
