//
//  ContentView.swift
//  practicee
//
//  Created by Benjamin Rojo on 26/08/25.
//

import SwiftUI


struct ContentView: View {
    let frutas = ["🍎 Manzana", "🍌 Plátano", "🍇 Uvas", "🍓 Fresa"]
     
         var body: some View {
             VStack(spacing: 40) {
                 
                 // 🚀 1️⃣ Usando LIST
                 // List ya incluye scroll automático
                 // Está optimizada para listas largas
                 // Es la opción "nativa de iOS" (como Ajustes, Contactos)
                 List(frutas, id: \.self) { fruta in
                     Text(fruta)
                         .font(.headline)
                 }
                 .frame(height: 200) // limite de alto solo para ver la diferencia
                 
                 
                 // 🚀 2️⃣ Usando SCROLLVIEW + VSTACK
                 // Aquí tú decides el diseño, más flexible
                 // Pero no tiene optimización automática (carga todo de golpe)
                 ScrollView {
                     VStack(spacing: 12) {
                         ForEach(frutas, id: \.self) { fruta in
                             Text(fruta)
                                 .font(.headline)
                                 .padding()
                                 .frame(maxWidth: .infinity)
                                 .background(Color.green.opacity(0.2))
                                 .cornerRadius(10)
                         }
                     }
                 }
                 .frame(height: 200) // limite de alto solo para ver la diferencia
             }
             .padding()
         }
     }
        



#Preview {
    ContentView()
}
