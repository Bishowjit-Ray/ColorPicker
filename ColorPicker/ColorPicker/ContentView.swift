//
//  ContentView.swift
//  ColorPicker
//
//  Created by Bishowjit Ray on 17/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            ColorPicker("Select a Color",
                    selection: $backgroundColor,
                    supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(Color.white)
            .font(.headline)
            .padding(50)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
