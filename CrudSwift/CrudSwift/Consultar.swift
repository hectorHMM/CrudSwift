//
//  Consultar.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

struct Consultar: View {
    @State private var id = ""
    var body: some View {
        VStack {
            TextField("Numero de empleado", text: $id)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Buscar")
            }
            Spacer()
            List {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            
        }
    }
}

struct Consultar_Previews: PreviewProvider {
    static var previews: some View {
        Consultar()
    }
}
