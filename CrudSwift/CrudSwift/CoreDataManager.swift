//
//  CoreDataManager.swift
//  CrudSwift
//
//  Created by CCDM22 on 22/11/22.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer : NSPersistentContainer
    
    init(){
        persistentContainer = NSPersistentContainer(name: "Usuario")
        persistentContainer.loadPersistentStores(completionHandler: {
            (descripcion, error) in
            if let error = error {
                fatalError("Core data failed to initialized \(error.localizedDescription)")
            }
        })
    }
}
