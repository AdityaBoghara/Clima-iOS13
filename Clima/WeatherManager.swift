//
//  WeatherManager.swift
//  Clima
//
//  Created by Aditya Boghara on 12/8/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation


struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=dccc0c6e3411aa43f20324f9e16464fc&units=metric"
    
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
    }
    
}
