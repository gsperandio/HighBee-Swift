import SwiftUI

struct HomePage: View {
    @State private var products = Products.allProducts()
    @State var initialOffset: CGFloat?

    let cardList = Products.allProducts()
    
    var body: some View {
            ScrollView {
                HStack{
                    Spacer()
                    
                    Text("Buscar")
                        .padding(.top, 20)
                        .bold()
                        .italic()
                    
                    
                    Image(systemName: "magnifyingglass.circle.fill")
                        .padding(.trailing, 20)
                        .padding(.top, 20)
                        .foregroundColor(.orange)
                        .font(.system(size: 40))
                }

                // Use um loop para criar as colunas
                ForEach(0..<cardList.count, id: \.self) { index in
                    if index % 2 == 0 {
                        HStack {
                            ProductView(product: cardList[index])
                            if index + 1 < cardList.count {
                                ProductView(product: cardList[index + 1])
                            }
                        }
                    }
                }
            }
        }
}

struct ProductView: View {
    let product: Products
    @State var isProdTapped = false
    var body: some View {
        VStack {
            Image(product.ImageProduct)
                .resizable()
                .frame(width: .infinity, height: 170)
                .padding(.top, -20)
                .padding(.horizontal, -10)
            
            Text(product.name)
                .font(.headline)
            
            Text("R$ " + product.price)
                .font(.subheadline)
                .padding(.top, 1)
                .padding(.horizontal, 12)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack{
                Spacer()
                NavigationLink(destination: ProductPage(prod: product ).navigationBarBackButtonHidden(false)){
                    HStack{
                        Image(systemName: "menucard.fill")
                            .foregroundColor(Color(hex: 0xFFCD00))
                            .font(.system(size: 24))
                            .padding(.horizontal, 10)
                    }
                }
            }
            .padding(0)
        }
        .frame(width: 160, height: 250)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
        .padding(10)
    }
}


#Preview {
    NavigationView {
        HomePage()
    }
}
