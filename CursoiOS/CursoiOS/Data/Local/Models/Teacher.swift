//
//  Teacher.swift
//  CursoiOS
//
//  Created by David Jardon on 20/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import Foundation

class Teacher: Hashable {
    // Equatable protocol implementation
    static func == (lhs: Teacher, rhs: Teacher) -> Bool {
        return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
    
    // Hashable protocol implementation
    func hash(into hasher: inout Hasher) {
        return hasher.combine(ObjectIdentifier(self))
    }
    
    var name: String?
    var email: String?
    var type: TeacherType?
    
    convenience init(name: String, email: String? = nil, type: TeacherType? = nil) {
        self.init()
        
        self.name = name
        self.email = email
        self.type = type
    }
}
