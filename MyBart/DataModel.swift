//
//  DataModel.swift
//  MyBart
//
//  Created by Rajesh Gundapaneni on 6/6/16.
//  Copyright © 2016 cseio. All rights reserved.
//

import Foundation

class Feed {

    var id: Int64?
    var name: String?
    var address: String?
    
    init? (id: Int64, name: String, address: String){
        self.id = id
        self.name = name
        self.address = address
        
        if name.isEmpty || address.isEmpty {
            return nil
        }
        
    }

}

class FeedItem {
    var title: String
    var description: String
    var link: String
    
    init (title: String, description: String, link: String){
        self.title = title
        self.description = description
        self.link = link
        
    }
    
}

