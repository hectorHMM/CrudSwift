//
//  Modificar.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

struct Modificar: View {
    var body: some View {
        VStack {
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    Text("Modificar")
                        .padding(.top, 32)
                }
    }
}

struct Modificar_Previews: PreviewProvider {
    static var previews: some View {
        Modificar()
    }
}
