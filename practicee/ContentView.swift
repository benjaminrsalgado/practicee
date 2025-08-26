//
//  ContentView.swift
//  practicee
//
//  Created by Benjamin Rojo on 26/08/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // 👉 PRIMERA PARTE: Scroll horizontal con tarjetas
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 22) {
                    ForEach(1...10, id: \.self) { num in
                        VStack {
                            Text("Card \(num)") // texto dentro de la tarjeta
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .frame(width: 150, height: 150) // tamaño fijo
                        .background(Color.red.opacity(0.6)) // color de fondo
                        .cornerRadius(12) // esquinas redondeadas
                        .shadow(radius: 4) // sombrita
                    }
                }
                .padding(.horizontal) // margen a los lados
            }
            
            // 👉 SEGUNDA PARTE: Scroll vertical con LazyVStack
            ScrollView(.vertical, showsIndicators: true) {
                LazyVStack(spacing: 10) {
                    ForEach(1...20, id: \.self) { num in
                        Text("Elemento \(num)")
                            .frame(maxWidth: .infinity) // que ocupe todo el ancho
                            .padding()
                            .background(Color.gray.opacity(0.2)) // color de fondo
                            .cornerRadius(8)
                            .padding(.horizontal) // margen lateral
                    }
                }
                .padding(.top)
            }
        }
        .padding() // padding general del VStack
    }
}

#Preview {
    ContentView()
}

#Preview {
    ContentView()
}
