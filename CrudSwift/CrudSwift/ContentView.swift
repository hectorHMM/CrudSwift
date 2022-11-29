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
     //   sortDescriptors: [NSSortDescriptor(keyPath: \Usuario.id, ascending: true)],
    //    animation: .default)
    //private var items: FetchedResults<Usuario>
    let coreDM: CoreDataManager
    //let persistenceController = PersistenceController.shared
    
    var body: some View {
        TabView{
            Lista(coreDM: coreDM)
                .tabItem{
                    Image(systemName: "list.number")
                    Text("Lista")
                }
            //Consultar(coreDM: coreDM)
            //    .tabItem{
            //        Image(systemName: "person.crop.circle")
            //        Text("Consultar")
            //    }
            Anadir(coreDM: coreDM).tabItem{
                Image(systemName: "person.badge.plus")
                Text("Anadir")
            }
            Modificar(coreDM: coreDM).tabItem{
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

