//  ContentView.swift
//  ExampleUI
//
//  Created by Dev Mac on 05/09/23.
//

import SwiftUI


struct ContentView: View {
    @State var texto = ""
    @State var senha = ""
    @State var isToggled = false
    var body: some View {
     
    
            VStack
            {
                Image("wallpaper")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.height)
                
             
                        
                    
                    VStack{
                        Text("Bem-vindo a \nnossa causa")
                        .font(.largeTitle)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.top, 20)
    
                        Spacer().frame(height: 20)
                        
                        Text("Aqui suas escolhas são feitas em cima \nde produtos que são a base da vida")
                            .font(.title3)
                        .fontWeight(.ultraLight)
                        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .clipShape(.buttonBorder)
                        
                        
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
                        
                        Divider()
                            .frame(width: 200)
                        
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
                        
                        
                        Spacer().frame(height: 100)
                        
                    }
                    .background(.white)
                    
                
            }.edgesIgnoringSafeArea(.all)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
