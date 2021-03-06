//
//  Event.swift
//  servicebook-ios
//
//  Created by Christopher Williamson on 4/25/16.
//  Copyright © 2016 Christopher Williamson. All rights reserved.
//

import Foundation
import Spine

// Resource class
class Event: Resource {
    var name: String?
    var address: String?
    var city: String?
    var state: String?
    var country: String?
    //var startTime: String?
    //var endTime: String?
    var owner: User?
    //var organization: Organization?
    //var comments: LinkedResourceCollection?
    //var photos: LinkedResourceCollection?
    
    override class var resourceType: ResourceType {
        return "event"
    }
    
    override class var fields: [Field] {
        return fieldsFromDictionary([
            "name": Attribute(),
            "address": Attribute(),
            "city": Attribute(),
            "state": Attribute(),
            "country": Attribute(),
            //"startTime": Attribute(),
            //"endTime": Attribute(),
            "owner": ToOneRelationship(User)
            //"organization": ToOneRelationship(Organization),
            //"comments": ToManyRelationship(Comment)
            //"photos": ToManyRelationship(Photo)
            ])
    }
}