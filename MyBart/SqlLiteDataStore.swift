//
//  SqlLightDataStore.swift
//  MyBart
//
//  Created by Rajesh Gundapaneni on 6/6/16.
//  Copyright © 2016 cseio. All rights reserved.
//

import Foundation
import SQLite


enum DataAccessError: ErrorType {
    case Datastore_connection_error
    case Insert_error
    case Delete_error
    case Search_error
    case Nil_in_Data
}

class SqlLiteDataStore {
    
static let sharedInstance = SqlLiteDataStore()
    let BBDB: Connection?
    
    private init() {
    
        var path = "db.sqlite"
        
        if let dirs: [NSString] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as [NSString] {
        let dir = dirs[0]
            path = dir.stringByAppendingPathComponent("db.sqlite")
            print(path)
            
        }
        
        do {
           BBDB = try Connection (path)
        }catch _{
            BBDB = nil
        }
    }
    func createTables () throws {
    
        do{
            try FeedDataHelper.createTable()
        }catch {
         throw DataAccessError.Datastore_connection_error
        }
    }
    

}