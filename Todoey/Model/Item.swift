//
//  Item.swift
//  Todoey
//
//  Created by 박정현 on 28/07/2019.
//  Copyright © 2019 박정현. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
