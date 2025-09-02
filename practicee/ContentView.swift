import SwiftUI

struct ContentView: View {
    let numbers = 1...12

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                
                // 1️⃣ FLEXIBLE → se ajusta al ancho disponible
                Text("Flexible (se reparten el espacio)").bold()
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(numbers, id: \.self) { num in
                        Text("Item \(num)")
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue.opacity(0.3))
                            .cornerRadius(8)
                    }
                }
                
                // 2️⃣ FIXED → siempre mide lo mismo
                Text("Fixed (ancho fijo de 100)").bold()
                LazyVGrid(columns: [GridItem(.fixed(100)), GridItem(.fixed(100))]) {
                    ForEach(numbers, id: \.self) { num in
                        Text("Item \(num)")
                            .frame(width: 100, height: 60)
                            .background(Color.green.opacity(0.3))
                            .cornerRadius(8)
                    }
                }
                
                // 3️⃣ ADAPTIVE → se mete el máximo posible
                Text("Adaptive (mínimo 80)").bold()
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(numbers, id: \.self) { num in
                        Text("Item \(num)")
                            .frame(height: 60)
                            .frame(maxWidth: .infinity)
                            .background(Color.purple.opacity(0.3))
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
