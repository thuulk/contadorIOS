//
//  ContentView.swift
//  Contador
//
//  Created by MAC on 17/11/26.
//

import SwiftUI

struct ContentView: View {
    @State private var contador = 0
    var body: some View {
        VStack(spacing: 24) {
            Text("Contador")
                .font(.largeTitle)
                .bold()
            Text("\(contador)")
                .font(.system(size: 96, weight: .bold))
                .foregroundStyle(contador >= 100 ? Color.blue : Color.primary)
                .contentTransition(.numericText())
            HStack(spacing: 16) {
                Button {
                    withAnimation{
                        contador -= 1
                    }
                } label: {
                    Image(systemName: "minus").frame(width: 60, height: 44)
                }
                .buttonStyle(.bordered)
                .disabled(contador == 0)
                
                Button {
                    withAnimation{
                        contador += 1
                    }
                } label: {
                    Image(systemName: "plus").frame(width: 60, height: 44)
                }
                .buttonStyle(.bordered)
            }
            .font(.title)
            Button("Reiniciar", role: .destructive) {
                contador = 0
            }
            
            if contador >= 100 {
                Text("¡Llegaste a 100!")
                    .font(.headline)
            }
        }
        .tint(.blue)
        .padding()
    }
}


