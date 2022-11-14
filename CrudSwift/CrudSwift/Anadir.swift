//
//  Anadir.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

struct Anadir: View {
    var body: some View {
        VStack {
                    Image(systemName: "person.badge.plus")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    Text("Anadir")
                        .padding(.top, 32)
                }.tabItem {
                    Image(systemName: "person.badge.plus")
                    Text("Anadir")
                }
    }
}

struct Anadir_Previews: PreviewProvider {
    static var previews: some View {
        Anadir()
    }
}
