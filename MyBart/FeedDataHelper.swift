//
//  FeedDataHelper.swift
//  MyBart
//
//  Created by Rajesh Gundapaneni on 6/6/16.
//  Copyright © 2016 cseio. All rights reserved.
//

import Foundation
import SQLite

protocol DataHelperProtocol {
    typealias T
    
    static func createTable() throws -> Void
    static func insert(item: T) throws -> Int64
    static func delete(item: T) throws -> Void
    static func findAll() throws -> [T]?
}

