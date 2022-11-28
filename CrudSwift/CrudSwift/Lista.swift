//
//  Lista.swift
//  CrudSwift
//
//  Created by CCDM22 on 17/11/22.
//

import SwiftUI

struct Lista: View {
    @State private var userArray = [Usuario]()
    let coreDM: CoreDataManager
    var body: some View {
            List {
                ForEach(userArray, id: \.self){
                    user in
                    VStack{
                        Text(String(user.id) ?? "")
                        Text(user.nombre ?? "")
                        Text(user.apellido ?? "")
                        Text(user.username ?? "")
                        Text(String(user.rolid) ?? "")
                    }.padding()
                }.onDelete(perform: {
                    indexSet in
                    indexSet.forEach({ index in
                        let usuario = userArray[index]
                        coreDM.borrarUsuario(usuario: usuario)
                        mostrarUsuarios()
                    })
                })
            }.onAppear(perform: {
                mostrarUsuarios()
            })
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
