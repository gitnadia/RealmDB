//
//  Task.swift
//  RealmDB
//
//  Created by nadezda.gura
//

import SwiftUI
import RealmSwift

class Task: Object, Identifiable {
    
    @objc dynamic var id: Date = Date ()
    @objc dynamic var title = ""
    @objc dynamic var detail = ""
}
