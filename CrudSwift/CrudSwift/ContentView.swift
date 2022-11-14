//
//  ContentView.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

    var body: some View {
        TabView{
                    Text("Home")
                        .tabItem {
                            Image(systemName: "list.number")
                            Text("Home")
                        }
            Consultar()
            Anadir()
            Modificar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

