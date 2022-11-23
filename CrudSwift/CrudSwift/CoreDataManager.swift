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
    
    func guardarUsuario(id: Int16, rolid: Int16, apellido: String, nombre: String, username: String, activo: Bool) {
        let usuario = Usuario(context: persistentContainer.viewContext)
        usuario.rolid = rolid
        usuario.id = id
        usuario.apellido = apellido
        usuario.nombre = nombre
        usuario.username = username
        usuario.activo = activo
        
        do {
            try persistentContainer.viewContext.save()
            print("Producto guardado")
        }
        catch {
            print("Failed to save error en \(error)")
        }
        
    }
    
    func leerTodosLosUsuarios() -> [Usuario]{
        let fetchRequest : NSFetchRequest<Usuario> = Usuario.fetchRequest()
        
        do{
            return try persistentContainer.viewContext.fetch(fetchRequest)
        }
        catch{
            return[]
        }
    }
    
    func borrarUsuario(usuario: Usuario){
        persistentContainer.viewContext.delete(usuario)
        
        do{
            try persistentContainer.viewContext.save()
        }
        catch{
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error.localizedDescription)")
        }
    }
}
