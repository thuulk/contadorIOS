
//  ContentView.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct ContentLol: View {
    @State private var contador1 = 0
    @State private var contador2 = 0
    var body: some View {
        VStack(spacing: 24){
            Text("Contador")
                .font(.largeTitle)
                .bold()
        }
        HStack(spacing: 6){
            
            VStack(spacing: 24) {
                Text("Equipo 2")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(Color.orange)
                Text("\(contador1)")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundStyle(contador1 >= 100 ? Color.orange : Color.primary)
                    .contentTransition(.numericText())
                HStack(spacing: 16) {
                    Button {
                        withAnimation{
                            contador1 -= 1
                        }
                    } label: {
                        Image(systemName: "minus").frame(width: 40, height: 44)
                    }
                    .buttonStyle(.bordered)
                    .disabled(contador1 == 0)
                    
                    Button {
                        withAnimation{
                            contador1 += 1
                        }
                    } label: {
                        Image(systemName: "plus").frame(width: 40, height: 44)
                    }
                    .buttonStyle(.bordered)
                }
                .tint(.orange)
                .font(.title)
            }
            
            Text("VS.")
                .font(.title2)
                .bold()
            
            VStack(spacing: 24) {
                Text("Equipo 2")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(Color.blue)
                Text("\(contador2)")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundStyle(contador2 >= 100 ? Color.blue : Color.primary)
                    .contentTransition(.numericText())
                HStack(spacing: 16) {
                    Button {
                        withAnimation{
                            contador2 -= 1
                        }
                    } label: {
                        Image(systemName: "minus").frame(width: 40, height: 44)
                    }
                    .buttonStyle(.bordered)
                    .disabled(contador2 == 0)
                    
                    Button {
                        withAnimation{
                            contador2 += 1
                        }
                    } label: {
                        Image(systemName: "plus").frame(width: 40, height: 44)
                    }
                    .buttonStyle(.bordered)
                }
                .tint(.blue)
                .font(.title)
            }
        }
        .padding()
        
        Button("Reiniciar", role: .destructive) {
            contador1 = 0
            contador2 = 0
        }
        if contador1 >= 100 || contador2 >= 100{
            Text("¡Llegaste a 100!")
            .font(.headline)
        }
        
    }
}

#Preview {
    ContentLol()
}
