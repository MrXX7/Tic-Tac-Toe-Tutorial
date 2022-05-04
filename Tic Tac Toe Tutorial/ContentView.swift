//
//  ContentView.swift
//  Tic Tac Toe Tutorial
//
//  Created by Oncu Ohancan on 3.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(),
                spacing: 15), count: 3), spacing: 15, content: {
                ForEach(0..<9) { index in
                    Color.white
                        .frame(width: width, height: width)
                        .cornerRadius(10)
                }
            }) .padding(15)
                .preferredColorScheme(.dark)
                .navigationTitle("Tic Tac Toe")
        }
    }
    var width: CGFloat {
        return (UIScreen.main.bounds.width - 60) / 3
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
