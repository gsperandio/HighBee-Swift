//
//  LoginPage.swift
//  High Bee
//
//  Created by Dev Mac on 26/10/23.
//

import SwiftUI

struct RegisterPage: View {
    
    @State var texto = ""
        @State var senha = ""
        var body: some View {
            NavigationView{
        
                ZStack
                {
                    Color(hex: 0xf1b729)
                    
                    VStack {
                        Spacer()
                        
                        HStack {
                            Image("BigLogo")
                                .resizable()
                                .frame(width: 130, height: 100)
                                .foregroundColor(.white)
                                .padding()
                            
                            Text("HIGH \nBEE")
                                .fontWeight(.bold)
                                .font(.custom("Helvetica", size: 40))
                                .foregroundColor(Color(hex: 0x2A3038))
                        }
                        
                        Spacer()
                        
                        ZStack{
                            Rectangle()
                                .fill(.white)
                            
                            VStack(alignment: .leading, spacing: 0){
                                Text("Crie sua conta")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.top, 20)
                                    .padding(.leading, 20)
                                
                                Text("E-mail")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.top, 20)
                                    .padding(.leading, 20)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                
                                TextField("seuemail@com", text: $texto)
                                    .padding(.leading, 16)
                                    .padding(.vertical, 8)
                                    .foregroundColor(.black)
                                    .background(Color(uiColor: .systemGray6))
                                    .border(Color(hex: 0xFFCD00), width: 2)
                                    .cornerRadius(4)
                                    .padding(.horizontal)
                                HStack{
                                    Text("Senha")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top, 20)
                                        .padding(.leading, 20)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                    
                                    Spacer()
                                    
                                }
                                
                                SecureField("***********", text: $senha)
                                    .padding(.leading, 16)
                                    .padding(.vertical, 8)
                                    .border(Color(hex: 0xFFCD00), width: 2)
                                    .background(Color(uiColor: .systemGray6))
                                    .cornerRadius(4)
                                    .padding(.horizontal)

                                
                                Spacer()
                                
                                NavigationLink(destination: HomePage().navigationBarBackButtonHidden(true)){
                                    HStack{
                                        Text("Criar Conta")
                                    }
                                    .padding(.vertical, 14)
                                    .frame(maxWidth: .infinity)
                                    .background(Color(hex: 0xFFCD00))
                                    .foregroundColor(.black)
                                    .cornerRadius(8)
                                    .padding()
                                    .bold()
                                }
                                
                                Button{
                                    
                                } label: {
                                    Label("Registrar com Apple", systemImage: "apple.logo")
                                        .bold()
                                }
                                .padding(.vertical, 14)
                                .frame(maxWidth: .infinity)
                                .background(.black)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .padding()
                                
                                NavigationLink(destination: LoginPage().navigationBarBackButtonHidden(true)){
                                    HStack{
                                        Text("Já possui uma conta?")
                                            .padding(.top, 20)
                                            .padding(.leading, 20)
                                            .font(.system(size: 16))
                                            .foregroundColor(.secondary)
                                        
                                    
                                        Text("Entre")
                                            .foregroundColor(.blue)
                                            .padding(.trailing, 20)
                                            .padding(.top, 20)
                                            .font(.system(size: 18))
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .frame(maxWidth: .infinity, alignment: .center)
                                
                                Spacer()
                                
                                
                            }
                        }
                        .background(.white)
                        .frame(maxWidth: .infinity, maxHeight: 500, alignment: .bottom)
                        .cornerRadius(30)
                        
                    }
                }.edgesIgnoringSafeArea(.all)
            }
        }
    
}


#Preview {
    NavigationView {
        RegisterPage()
    }
}
