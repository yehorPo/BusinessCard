//
//  ContentView.swift
//  BusinessCard
//
//  Created by Yehor Podolskyi on 17.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.cyan)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("frog")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250.0)
                    .clipShape(Circle())
                    .overlay(content: {
                        Circle().stroke(Color.yellow, lineWidth: 5)
                    })
                Text("Yehor Podolskyi").font(Font.custom("Ubuntu-Bold", size: 40)).fontWeight(.black).foregroundColor(Color.yellow).bold()
                Text("Avarage chel")
                    .foregroundColor(.yellow)
                    .font(.system(size: 25))
                    .bold()
                Divider()
                roundedRect(text: "1488", imageName: "figure.roll")
                roundedRect(text: "Мамі привіт", imageName: "sparkles")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct roundedRect: View {
    let text:String
    let imageName:String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.yellow)
                .frame(height: 50)
                .cornerRadius(25)
                .padding(.all)
            HStack {
                Image(systemName: imageName)
                    .font(.system(size: 20))
                    .foregroundColor(.cyan)
                Text(text).font(.system(size: 20))
                    .foregroundColor(.cyan)
            }
        }
    }
}
