//
//  WeatherHomeView.swift
//  NIBM-22.2
//
//  Created by NIBM-LAB04-PC02 on 2024-02-10.
//

import SwiftUI

struct WeatherHomeView: View {
    @StateObject var weatherVM:WeatherHomeViewModel=WeatherHomeViewModel()
    var body: some View{
        VStack{
            ZStack{
                VStack{
                    RoundedRectangle(cornerRadius: 5)
                        .frame(height:0)
                    VStack{
                        HStack{
                            Image(systemName: "cloud.sun.fill")
                                .font(.system(size: 80)) // Set the size of the icon
                                .foregroundColor(.red) // Set the color of
                       
                            VStack{
                                Text("Tomorrow")
                                    .foregroundColor(.black.opacity(0.8))
                                    .fontWeight(.medium)
                                Text("22/")
                                    .fixedSize().font(.largeTitle)
                                Text("17")
                                    .fixedSize().font(.title)
                                Text("Thundershowers")
                                    .fontWeight(.medium)
                            }
                            .foregroundColor(.blue) // Set the color of
                            .fontWeight(.bold)
                            
                        }
                        HStack{
                            Image(systemName: "umbrella.fill")
                                .font(.system(size: 35))
                            Image(systemName: "humidity.fill")
                                .font(.system(size: 35))
                            Image(systemName: "speedometer")
                                .font(.system(size: 35))
                        }
                        HStack{
                           Text("30%")
                            Text("20%")
                            Text("12% km/h")
                        }
                        HStack{
                           Text("Presipitation")
                            Text("Humidity")
                            Text("Wine Speed")
                        }
                        .fontWeight(.medium)
                    }
                    
                }
                VStack{
                  
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350,height:250)
                        .foregroundColor(.white).opacity(0.8)
                    
                }
            }
            .background(Color.purple.opacity(0.7))
            List{
                ForEach(weatherVM.weatherData,id:\.self){
                    data in HStack{
                        Text(data.dayName)
                        Spacer()
                        HStack{
                            Image(systemName: data.icon)
                            Text(data.weatherName)
                            Spacer()
                        }
                        Text(data.temp)
                        
                    }.padding()
                        .foregroundColor(.black.opacity(0.8))
                        .swipeActions(edge: .trailing,content:{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Edit")
                            }).tint(.yellow)
                            Button(action: {
                                weatherVM.weatherData.removeAll(where: {$0.id==data.id})
                            }, label: {
                                Text("Delete")
                            }).tint(.red)
                        })
                        .swipeActions(edge: .leading,content:{
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Save")
                            }).tint(.green)
                        })
                }
            }
        }
    }
}

#Preview {
    WeatherHomeView()
}
