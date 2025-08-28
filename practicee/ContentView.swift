//
//  ContentView.swift
//  practicee
//
//  Created by Benjamin Rojo on 26/08/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.white]),
                startPoint: .bottom,
                endPoint: .top
            )
            .ignoresSafeArea()
            
            VStack{
                Text("Catalogo de Prodcutos")
                    .font(.title)
                    .bold()
                ScrollView{
                    productos()
                }
            }
        
        }
        
        
    }
}

struct Product: Identifiable{
    let id = UUID()
    var name: String
    var price: String
    var imageName: String
    var imageURL: String
}


struct productos: View{
    var productosLista: [Product] = [
        Product(name: "iphone 12", price: "$10,000", imageName: "celular", imageURL: "pepe"),
        Product(name: "iphone 13", price: "$19,000", imageName: "celular", imageURL: "he"),
        Product(name: "iphone 14", price: "$40,000", imageName: "celular", imageURL: "https")
    ]
    var body: some View{

    }
}

struct ProductRowView: View{
    let product = Product
    var body: some View {
        HStack(spacing: 12) {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(8)

            VStack(alignment: .leading) {
                Text(product.name).font(.headline)
                Text(product.price).foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding(.vertical, 8)
    }
}
}



#Preview {
    ContentView()
}
