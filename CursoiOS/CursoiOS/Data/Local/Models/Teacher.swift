//
//  Teacher.swift
//  CursoiOS
//
//  Created by David Jardon on 20/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import Foundation


enum TeacherType: String {
    case intern
    case extern
    
    var description: String {
        switch self {
            case .intern:
                return "Interno"
            
            case .extern:
                return "Externo"
        }
    }
}

class Teacher: Hashable, CustomStringConvertible {
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
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    var description: String {
        return "Teacher data: \(String(describing: name)) \(String(describing: email))"
    }
    
    convenience init(name: String, email: String? = nil, type: TeacherType? = nil) {
        self.init()
        
        self.name = name
        self.email = email
        self.type = type
    }
}
