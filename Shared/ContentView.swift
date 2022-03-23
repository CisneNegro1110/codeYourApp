//
//  ContentView.swift
//  Shared
//
//  Created by Jesús Francisco Leyva Juárez on 21/03/22.
//

import SwiftUI
//Otro Comentario
struct ContentView: View {
    @State private var name: String = ""
    @State private var age = Int.self
    @State private var email: String = ""
    @State private var btnAdd: Bool = false
    @State private var btnSave: Bool = false
    @State private var btnEdit: Bool = false
    var body: some View {
        VStack {
            VStack {
                TextField("Name", text: $name)
                TextField("Age", value: $age, formatter: NumberFormatter())
                    .keyboardType(UIKeyboardType.decimalPad)
                TextField("email", text: $email)
            }.padding()
            Spacer()
            HStack {
                Button("Add") {
                    btnAdd.toggle()
                }
                Button("Save") {
                    btnSave.toggle()
                }
                Button("Edit") {
                    btnEdit.toggle()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
