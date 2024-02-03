//
//  ContentView.swift
//  NIBM-22.2
//
//  Created by Rifai, Yasir (CHICO-C) on 2023-12-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            
//            Text("SwiftUI")
//            Text("Combine")
//         
//            HStack {
//                Text("RealityKit")
//                Text("CoreML")
//            }
//            ZStack{
//                Text("ARKit")
//            }
//    
//        }
//        VStack{
//            Circle()
////                .padding()
////                .padding(.leading, 60)
////                .padding(.trailing, 60)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//
//            
////        }
//        
//        VStack {
//            Circle()
//                .frame(width: 150,height: 150)
//            
//            HStack{
//                Text("Yasir")
//                Text("Rifai")
//
//            }
//            Text("yasirrifai30@gmail.com")
//            HStack{
//                Text("verified")
//                Image(systemName: "checkmark.seal.fill").foregroundStyle(.green)
////                Circle()
////                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 10)
//
//
//            }
//            Spacer()
//        }
//        padding()
        
//        VStack{
//            ZStack{
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(height: 180)
//                    .foregroundStyle(Color.green)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                Text("iOS")
//                    .font(.largeTitle)
//            }
//            .padding()
//            
//            ZStack{
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(height: 180)
//                    .foregroundStyle(Color.yellow)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                Text("macOS")
//                    .font(.largeTitle)
//            }
//            .padding()
//            
//            ZStack{
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(height: 180)
//                    .foregroundStyle(Color.red)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                Text("watchOS")
//                    .font(.largeTitle)
//            }
//            .padding()
//        }
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color.blue)
                    .padding()
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(height:280)
                
                VStack{
                    
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.white)
                    Text("Username: Admin")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
