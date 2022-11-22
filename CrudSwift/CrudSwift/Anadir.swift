//
//  Anadir.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

struct Anadir: View {
    @State private var nombre = ""
    @State private var apellido = ""
    @State private var username = ""
    @State private var activo = false
    @State private var rolid = 0
    var body: some View {
        VStack {
            TextField("Nombre", text: $nombre)
                .textFieldStyle(.roundedBorder)
                .padding()

            TextField("Apellido", text: $apellido)
                .textFieldStyle(.roundedBorder)
                .padding()

            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .padding()

            Picker(selection: $activo, label: Text("Activo")){
                Text("Activo").tag(true)
                Text("Inactivo").tag(false)
            }
            .pickerStyle(SegmentedPickerStyle())

            Picker(selection: $rolid, label: Text("Roles")){
                Text("Mesero").tag(1)
                Text("Cocina").tag(2)
                Text("Cajero").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Crear")
            }
            Spacer()
        }
    }
}

struct Anadir_Previews: PreviewProvider {
    static var previews: some View {
        Anadir()
    }
}
