//
//  Session.swift
//  test_patterns
//
//  Created by Александр Арсенюк on 16.11.2021.
//

import Foundation

class Session {
    
    private init () {}
    
    static let instance = Session()
    
    var fio: String = ""
    var age: Int = 0
    var balance: Int = 0
    
}

