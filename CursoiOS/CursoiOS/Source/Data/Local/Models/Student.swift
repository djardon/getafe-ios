//
//  Student.swift
//  CursoiOS
//
//  Created by David Jardon on 20/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import Foundation

class Student: CustomStringConvertible {
    // MARK: Properties
    //Properties whit optional '?' value can be nil
    var name: String?
    var email: String?
    var birthdate: Date?
    
    // Use description var of CustomStringConvertible
    // to print this class with custom String format
    var description: String {
        return "Student data: \(String(describing: name)) \(String(describing: email))"
    }

    // Custom init (Constructor) class with default values
    convenience init(name: String, email: String? = nil, birthdate: Date? = nil) {
        self.init()
        
        // Always init all properties
        self.name = name
        self.email = email
        self.birthdate = birthdate
    }
}
