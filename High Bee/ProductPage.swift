//
//  ProductPage.swift
//  High Bee
//
//  Created by Dev Mac on 26/10/23.
//

import SwiftUI

struct ProductPage: View {
    let allProducts = Products.allProducts()
    
    @State var initialOffset: CGFloat?
    @State var offset : CGFloat?
    @State var viewIsShow :Bool = true
    @State var texto = ""
    @State var senha = ""
    let prod: Products

    init(prod: Products) {
        self.prod = prod
    }
    
    var body: some View {
        
        VStack
        {
            Image(self.prod.ImageProduct)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.top, -140)
                .background(Color(hex: 0xf1b729))
        
            ZStack{
                Rectangle()
                    .fill(.white)
                
                VStack(alignment: .center, spacing: 0){
                    Text(self.prod.name)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 20)
                        .padding(.leading, 20)
                    
                    Spacer().frame(height: 20)
                    
                    
                    
                    NavigationLink(destination: HomePage().navigationBarBackButtonHidden(false)){
                        HStack{
                            Text("Adicionar ao carrinho")
                        }
                        .padding(.vertical, 14)
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: 0xFFCD00))
                        .foregroundColor(.black)
                        .cornerRadius(8)
                        .padding()
                        .bold()
                    }
                    
                    Spacer()
                    
                    
                }
            }
            .background(.white)
            .frame(maxWidth: .infinity, maxHeight: 500, alignment: .bottom)
            .cornerRadius(30)
            .padding(.top, -40)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ProductPage(prod: Products(id: 1, name: "Colombia Gold", description: "Desc de um produto",ImageProduct: "img5", price: "75.99"))
}
