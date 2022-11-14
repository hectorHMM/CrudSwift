//
//  CrudSwiftApp.swift
//  CrudSwift
//
//  Created by CCDM16 on 14/11/22.
//

import SwiftUI

@main
struct CrudSwiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
