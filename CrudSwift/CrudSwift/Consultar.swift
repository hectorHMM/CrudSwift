//
//  Consultar.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

struct Consultar: View {
    var body: some View {
        VStack {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    Text("Consultar")
                        .padding(.top, 32)
                }.tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Consultar")
                }
    }
}

struct Consultar_Previews: PreviewProvider {
    static var previews: some View {
        Consultar()
    }
}
