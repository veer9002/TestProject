//
//  ContentView.swift
//  NavVw
//
//  Created by Manish Sharma on 07/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                List{
                    NavigationLink(destination: AnotherView()) {
                        Text("Go to Another View")
                    }

                    NavigationLink(destination: CView()) {
                        Text("Go to C View")
                    }
                }
               
            }
            .navigationBarTitle("SwifUI Catalog")
        }
    }
}

struct AnotherView: View {
    var body: some View {
        VStack {
            Text("This is Another View")
                .padding()

            NavigationLink(destination: CView()) {
                Text("Go to C View from Another View")
            }
        }
        .navigationBarTitle("Another View", displayMode: .inline)
    }
}

struct CView: View {
    var body: some View {
        Text("This is C View")
            .navigationBarTitle("C View", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
