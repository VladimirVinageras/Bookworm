//
//  DataController.swift
//  Bookworm
//
//  Created by Vladimir Vinageras on 22.10.2022.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "Bookworm")
    
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error{
                print("CoreData failed to load: \(error.localizedDescription)")
            }
            
        }
    }
}
