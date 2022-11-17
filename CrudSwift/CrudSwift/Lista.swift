//
//  Lista.swift
//  CrudSwift
//
//  Created by CCDM22 on 17/11/22.
//

import SwiftUI

struct Lista: View {
    var body: some View {
        VStack {
                    Image(systemName: "list.number")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    Text("Lista")
                        .padding(.top, 32)
                }
    }
}

struct Lista_Previews: PreviewProvider {
    static var previews: some View {
        Lista()
    }
}
