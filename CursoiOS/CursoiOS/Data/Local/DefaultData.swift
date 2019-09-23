//
//  DefaultData.swift
//  CursoiOS
//
//  Created by David Jardon on 23/09/2019.
//  Copyright © 2019 ds. All rights reserved.
//

import Foundation

// MARK: -  Create list of Students

// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
let defaultStudents = [Student(name: "Óliver",
                               email: "oliver@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                     month: 5))),
                       Student(name: "Sara",
                               email: "sara@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1984,
                                                                                     month: 9))),
                       Student(name: "David",
                               email: "david@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1985,
                                                                                     month: 4))),
                       Student(name: "Ángel",
                               email: "angel@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 2013,
                                                                                     month: 9))),
                       Student(name: "María",
                               email: "maria@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                     month: 4))),
                       Student(name: "Eduardo",
                               email: "eduardo@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1956,
                                                                                     month: 12))),
                       Student(name: "Miguel",
                               email: "miguel@gmail.com",
                               birthdate: Calendar.current.date(from: DateComponents(year: 1983,
                                                                                     month: 6)))]
// MARK: -  Create list of Teachers

// With .extern or .intern we represent the Enum value for this properties.
let defaultTeachers = [Teacher(name: "Juan",
                               email: "juan@gmail.com",
                               type: .intern),
                       Teacher(name: "Lucía",
                               email: "lucia@gmail.com",
                               type: .extern),
                       Teacher(name: "Paula",
                               email: "paula@gmail.com",
                               type: .extern),
                       Teacher(name: "Javier",
                               email: "javier@gmail.com",
                               type: .intern),
                       Teacher(name: "Marta",
                               email: "marta@gmail.com",
                               type: .intern)]

// MARK: - Create list of Subjects
// Use a list.filter for get different values for each subject
let defaultSubjects = [Subject(name: "Android",
                               teachers: defaultTeachers.filter{$0.name?.contains("u") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("a") ?? false}),
                       Subject(name: "iOS",
                               teachers: defaultTeachers.filter{$0.name?.contains("o") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("e") ?? false}),
                       Subject(name: "JavaScript",
                               teachers: defaultTeachers.filter{$0.name?.contains("i") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("i") ?? false}),
                       Subject(name: "Python",
                               teachers: defaultTeachers.filter{$0.name?.contains("e") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("o") ?? false}),
                       Subject(name: "Polymer",
                               teachers: defaultTeachers.filter{$0.name?.contains("a") ?? false},
                               students: defaultStudents.filter{$0.name?.contains("u") ?? false})]
