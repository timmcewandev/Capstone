//
//  DataStore.swift
//  tK Fan
//
//  Created by sudo on 7/5/17.
//  Copyright © 2017 sudo. All rights reserved.
//

import Foundation
class DataStore {
    
    static let sharedInstnce = DataStore()
    private init() {}
    var memberAdd: [MemberAdd] = []
}
