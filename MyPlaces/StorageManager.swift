//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Александр Матюшенко on 09.06.2022.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
        
    }
    
    static func deleteobject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
        
    }
    
}
