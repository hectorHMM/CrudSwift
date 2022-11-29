//
//  Lista.swift
//  CrudSwift
//
//  Created by CCDM22 on 17/11/22.
//

import SwiftUI

struct Lista: View {
    @State private var userArray = [Usuario]()
    @State var coreDM: CoreDataManager
    var body: some View {
        VStack{
            Text("Lista de usuarios")
            List {
                ForEach(userArray, id: \.self){
                    user in
                    VStack(alignment: .center){
                        Text("ID: \(String(user.id))")
                        Text("Nombre: \(user.nombre ?? "")")
                        Text("Apellido: \(user.apellido ?? "")")
                        Text("Username: \(user.username ?? "")")
                        Text("Rol ID: \(String(user.rolid) ?? "")")
                    }.padding()
                }.onDelete(perform: {
                    indexSet in
                    indexSet.forEach({ index in
                        let usuario = userArray[index]
                        coreDM.borrarUsuario(usuario: usuario)
                        mostrarUsuarios()
                    })
                })
            }
            .onAppear(perform: {
                coreDM = CoreDataManager()
                mostrarUsuarios()
            })
        }
    }
                                  
                                  func mostrarUsuarios() {
                                      print("Entre")
                                      userArray = coreDM.leerTodosLosUsuarios()
                                  }
}



struct Lista_Previews: PreviewProvider {
    static var previews: some View {
        Lista(coreDM: CoreDataManager())
    }
}
