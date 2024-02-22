//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Bernard Xique on 2/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("LightBlue")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Passaic, New Jersey")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(50)
                VStack(spacing: 10){
                    Image(systemName: "cloud.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom,50)
                
                HStack(spacing:20) {
                    
                    WeatherDailyView(dayofweek: "Tue", imageName: ("cloud.sun.fill"), temperature: (72))
                    
                    WeatherDailyView(dayofweek: "Wed", imageName: ("sun.max.fill"), temperature: (82))

                    WeatherDailyView(dayofweek: "Thu", imageName: ("wind"), temperature: (80))

                    WeatherDailyView(dayofweek: "Fri", imageName: ("snow"), temperature: (69))
                    
                    WeatherDailyView(dayofweek: "Sat", imageName: ("sun.max.fill"), temperature: (84))

                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDailyView: View {
    
    var dayofweek:(String)
    var imageName:(String)
    var temperature:(Int)
    
    var body: some View {
        VStack{
            Text(dayofweek)
                .font(.system(size: 25,
                              weight: .medium,
                              design:.default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)")
                .font(.system(size:25,weight:.heavy, design:.default))
                .foregroundColor(.white)
            
            
        }
    }
}
