//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Gilang Ramadhan on 23/03/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Dicoding Indonesia")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
