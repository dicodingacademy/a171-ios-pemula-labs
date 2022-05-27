//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Gilang Ramadhan on 17/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Text("Hello, Dicoding!")
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundColor(Color.blue)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
