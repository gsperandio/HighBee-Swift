//  ContentView.swift
//  ExampleUI
//
//  Created by Dev Mac on 05/09/23.
//

import SwiftUI

extension Color {
    init(hex: Int) {
        self.init(
            red: Double((hex >> 16) & 0xff) / 255.0,
            green: Double((hex >> 8) & 0xff) / 255.0,
            blue: Double(hex & 0xff) / 255.0
        )
    }
}

struct ContentView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            VStack
            {
                Image("wallpaper")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.height)
                
                VStack{
                    
                    Spacer().frame(height: 20)
                    
                    Text("Bem-vindo a ")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(.top, 0)
                    
                    Text("nossa causa!")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Spacer().frame(height: 20)
                    
                    Text("Aqui suas escolhas são feitas em cima")
                        .font(.title3)
                        .fontWeight(.ultraLight)
                        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .clipShape(.buttonBorder)
                    
                    Text("de produtos a base da vida.")
                        .font(.title3)
                        .fontWeight(.ultraLight)
                        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .clipShape(.buttonBorder)
                    
                    NavigationLink(destination: RegisterPage().navigationBarBackButtonHidden(true)){
                        HStack{
                            Text("Primeiro acesso")
                        }
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: 0xFFCD00))
                        .foregroundColor(.black)
                        .clipShape(.buttonBorder)
                        .padding(.horizontal, 40)
                        .padding()
                        .bold()
                    }
                    
                    Divider()
                        .frame(width: 250)
                    
                    NavigationLink(destination: LoginPage().navigationBarBackButtonHidden(true)){
                        HStack{
                            Text("Tenho uma conta")
                        }
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: 0xFFCD00))
                        .foregroundColor(.black)
                        .clipShape(.buttonBorder)
                        .padding(.horizontal, 40)
                        .padding()
                        .bold()
                    }
                    
                    Spacer().frame(height: 100)
                    
                }
                .background(.white)
                .padding(-30)
            }.edgesIgnoringSafeArea(.all)
        }else{
            SplashScreen()
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.isActive = true
                    }
                }
        }
    }
}

struct SplashScreen: View {
    
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        ZStack {
            Color(hex: 0xf1b729).ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width)
                
                Spacer()
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 0.8)){
                    self.size = 1.1
                    self.opacity = 1.0
                }
            }
        }
        
    }
}

