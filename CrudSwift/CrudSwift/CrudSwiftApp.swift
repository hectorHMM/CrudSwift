//
//  CrudSwiftApp.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

@main
struct CrudSwiftApp: App {
    //let persistenceController = PersistenceController.shared
    //let coreDM: CoreDataManager
    var body: some Scene {
        WindowGroup {
            ContentView(coreDM: CoreDataManager())
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
