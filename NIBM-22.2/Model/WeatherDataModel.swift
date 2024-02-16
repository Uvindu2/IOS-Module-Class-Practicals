//
//  WeatherDataModel.swift
//  NIBM-22.2
//
//  Created by NIBM-LAB04-PC02 on 2024-02-10.
//

import Foundation
struct WeatherDataModel:Identifiable,Hashable{
    var id=UUID().uuidString
    var dayName:String
    var icon:String
    var weatherName:String
    var temp:String
}

var sampleWeatherData = [ WeatherDataModel(dayName: "Mon", icon: "sun.min", weatherName: "Sunny Day", temp: "24/32"),
                          WeatherDataModel(dayName: "Tue", icon: "sun.min", weatherName: "Sunny Day", temp: "48/28"),
                          WeatherDataModel(dayName: "Tue", icon: "sun.and.horizon.fill", weatherName: "Sunny Day", temp: "78/58"),
                          WeatherDataModel(dayName: "Wed", icon: "sun.max.fill", weatherName: "Heavy Wind", temp: "34/28"),
                          WeatherDataModel(dayName: "Thu", icon: "sun.max.fill", weatherName: "Heavy Wind", temp: "34/25"),
                          WeatherDataModel(dayName: "Fri", icon: "sun.max.fill", weatherName: "Heavy Wind", temp: "37/28"),
                          WeatherDataModel(dayName: "Sat", icon: "sun.dust.fill", weatherName: "Rainy", temp: "28/18"),
                          WeatherDataModel(dayName: "Sun", icon: "cloud.sun", weatherName: "Sunny", temp: "25/17"),
]
