//
//  DataStore.swift
//  tK Fan
//

import Foundation
class DataStore {
    
    static let sharedInstnce = DataStore()
    private init() {}
    var memberAdd: [MemberAdd] = []
}
