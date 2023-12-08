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
        performRequest(urlString: urlString)
    }
    
    
    func performRequest(urlString :String) {
        
//        create URL
        
        if let url = URL(string: urlString){
            
//            create session
            let session = URLSession(configuration: .default)
            
//            give session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
//            start the task
            task.resume()
        }
        
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?){
        
        if error != nil{
            print(error!)
            return
        }
        
        if let safeData = data {
            
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
        
        
        
        
    }

}
