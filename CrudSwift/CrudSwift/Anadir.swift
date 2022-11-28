//
//  Anadir.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

struct Anadir: View {
    @State private var nombre:String = ""
    @State private var apellido:String = ""
    @State private var username:String = ""
    @State private var activo:Bool = false
    @State private var id:String = ""
    @State private var rolid:String = "Mesero"
    //@State private var userArray = [Usuario]()
    let coreDM: CoreDataManager
    
    var body: some View {
        VStack {
            TextField("ID", text: $id)
                .textFieldStyle(.roundedBorder)
                .padding()
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
                Text("Mesero").tag("1")
                Text("Cocina").tag("2")
                Text("Cajero").tag("3")
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            Button("Guardar") {
                coreDM.guardarUsuario(id: Int16(id)!, rolid: Int16(rolid)!, apellido: apellido, nombre: nombre, username: username, activo: activo)
                id = ""
                rolid = "Mesero"
                apellido = ""
                nombre = ""
                username = ""
                activo = false
            }
            Spacer()
        }.padding()
    }
}

struct Anadir_Previews: PreviewProvider {
    static var previews: some View {
        Anadir(coreDM: CoreDataManager())
    }
}
