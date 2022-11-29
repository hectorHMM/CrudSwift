//
//  Modificar.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

struct Modificar: View {
    @State private var nombre:String = ""
    @State private var apellido:String = ""
    @State private var username:String = ""
    @State private var activo:Bool = false
    @State private var id:String = ""
    @State private var rolid:String = "Mesero"
    @State private var usuario: Usuario = Usuario()
    let coreDM: CoreDataManager
    var body: some View {
        VStack {
            Text("Modificar Usuario")
            TextField("Numero de empleado", text: $id)
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
            
            HStack
            {
              //Obtener los datos del id escrito
            Button("Obtener Datos") {
                usuario = coreDM.leerUsuario(id: id)!
                nombre = usuario.nombre ?? ""
                apellido = usuario.apellido ?? ""
                username = usuario.username ?? ""
                //Activo
                if usuario.activo == true {
                    activo = true
                } else {
                    activo = false
                }

                //Rolid
                switch usuario.rolid {
                    case 1:
                        rolid = "1"
                    case 2:
                        rolid = "2"
                    case 3:
                        rolid = "3"
                default:
                    rolid = "1"
                }
            }

            //Actualizar el Usuario
            Button("Actualizar Usuario") {
                usuario.id = Int16(id)!
                usuario.nombre = nombre
                usuario.apellido = apellido
                usuario.username = username
                usuario.activo = activo
                usuario.rolid = Int16(rolid)!
                coreDM.actualizarUsuario(usuario: usuario)
                //limpieza de campos
                id = ""
                rolid = "Mesero"
                apellido = ""
                nombre = ""
                username = ""
                activo = false
                
            }

            }
            
            Spacer()
                }
    }
}

struct Modificar_Previews: PreviewProvider {
    static var previews: some View {
        Modificar(coreDM: CoreDataManager())
    }
}
