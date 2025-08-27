//
//  ContentView.swift
//  practicee
//
//  Created by Benjamin Rojo on 26/08/25.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        
    }
}

struct Tarea: Identifiable{
    let id = UUID()
    let titulo: String
    var completado: Bool
}

class ViewModel: ObservableObject{
    @Published var tareas: [Tarea] = [
           Tarea(titulo: "uveg", completado: true),
           Tarea(titulo: "swift", completado: true),
           Tarea(titulo: "SwiftUI", completado: true),
           Tarea(titulo: "notion", completado: true),
           Tarea(titulo: "emprender", completado: true)
       ]
    

}

struct VistaPrincial: View{
    @StateObject var paste = ViewModel()
    var body: some View{
        List(paste.tareas){ pas in
            Text(pas.titulo)
            Button {
                    pas.completado.toggle() // ✅ Aquí sí funciona directo
                   } label: {
                       Image(systemName: pas.completado ? "checkmark.circle.fill" : "circle")
                   }
            pas.completado.description
        }
    }
}

#Preview {
    ContentView()
}
