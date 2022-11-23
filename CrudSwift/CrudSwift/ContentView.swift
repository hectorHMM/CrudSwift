//
//  ContentView.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //@Environment(\.managedObjectContext) private var viewContext

    //@FetchRequest(
    //    sortDescriptors: [NSSortDescriptor(keyPath: \Usuario.id, ascending: true)],
    //    animation: .default)
    private var items: FetchedResults<Usuario>
    let coreDM: CoreDataManager
    
    var body: some View {
        TabView{
            Lista()
                .tabItem{
                    Image(systemName: "list.number")
                    Text("Lista")
                }
            Consultar()
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("Consultar")
                }
            Anadir().tabItem{
                Image(systemName: "person.badge.plus")
                Text("Anadir")
            }
            Modificar().tabItem{
                Image(systemName: "pencil.circle")
                Text("Modificar")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(coreDM: CoreDataManager())
    }
}

