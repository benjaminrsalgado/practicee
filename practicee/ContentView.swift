import SwiftUI

struct ContentView: View {
    var body: some View{
        ColumnGridExample()
        RowGridExample()
        AdaptiveGridExample()
        SpacingGridExample()
    }
}


// COLUMNAS 2, LAZYVGRID
struct ColumnGridExample: View {
    // 1️⃣ Datos: una lista de emojis de frutas
    let fruits = ["🍎", "🍌", "🍇", "🍓", "🍍", "🥝", "🍒", "🍑", "concha", "viernes", "22"]

    // 2️⃣ Definimos el layout: 2 columnas
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView(.vertical) { // 3️⃣ Scroll hacia abajo
            LazyVGrid(columns: columns, spacing: 20) { // 4️⃣ Rejilla con columnas
                ForEach(fruits, id: \.self) { fruit in // 5️⃣ Recorremos los datos
                    Text(fruit)                         // 6️⃣ Mostramos cada fruta
                        .font(.system(size: 40))        // Tamaño de fuente grande
                        .frame(width: 80, height: 80)   // Tamaño del cuadro
                        .background(Color.yellow.opacity(0.3)) // Fondo amarillo suave
                        .cornerRadius(12)               // Bordes redondeados
                }
            }
            .padding()
        }
    }
}

// FILAS LAZYHGRID

struct RowGridExample: View {
    // 1️⃣ Datos: lista de emojis de frutas
    let fruits = ["🍎", "🍌", "🍇", "🍓", "🍍", "🥝", "🍒", "🍑","hola", "pepe", "juan", "victor", "manzo", "22"]

    // 2️⃣ Definimos el layout: 2 filas
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),

    ]

    var body: some View {
        ScrollView(.horizontal) { // 3️⃣ Scroll hacia la derecha
            LazyHGrid(rows: rows, spacing: 20) { // 4️⃣ Rejilla con filas
                ForEach(fruits, id: \.self) { fruit in // 5️⃣ Recorremos los datos
                    Text(fruit)                         // 6️⃣ Mostramos cada fruta
                        .font(.system(size: 40))        // Tamaño grande
                        .frame(width: 80, height: 80)   // Cuadro
                        .background(Color.green.opacity(0.3)) // Fondo verde suave
                        .cornerRadius(12)
                }
            }
            .padding()
        }
    }
}

//LAS COLUMNAS SE ADAPTAN AL TAMAÑO DE LA PANTALLA
struct AdaptiveGridExample: View {
    // Datos
    let fruits = ["🍎", "🍌", "🍇", "🍓", "🍍", "🥝", "🍒", "🍑", "🥭", "🍊"]

    // Layout con adaptive
    let columns = [
        GridItem(.adaptive(minimum: 80)) // Cada celda mide al menos 80 puntos
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) { // Grid vertical
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .font(.system(size: 40))
                        .frame(width: 80, height: 80)
                        .background(Color.blue.opacity(0.3))
                        .cornerRadius(12)
                }
            }
            .padding()
        }
    }
}

// ESPACIO ENTRE LAS COLUMNAS
struct SpacingGridExample: View {
    // Datos
    let fruits = ["🍎", "🍌", "🍇", "🍓", "🍍", "🥝"]

    // Layout con spacing distinto
    let columns = [
        GridItem(.flexible(), spacing: 20), // Columna 1 → poco espacio
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)// Columna 2 → mucho espacio
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 40) { // Espacio entre FILAS
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .font(.system(size: 40))
                        .frame(width: 80, height: 80)
                        .background(Color.orange.opacity(0.3))
                        .cornerRadius(12)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
