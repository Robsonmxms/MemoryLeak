////
////  OtherExample.swift
////  MemoryLeak
////
////  Created by Robson Lima Lopes on 31/10/22.
////
//
//import Foundation
//
//class Developer {
//    var backlogs: [Backlog] = []
//    let name: String
//
//    init(name: String = "Robert"){
//        self.name = name
//        print("inserting developer \(String(describing: self.name)) reference")
//    }
//
//    deinit{
//        print("removing developer \(String(describing: self.name)) reference")
//    }
//
//    func addBacklog(backlog: Backlog, todo: TODO) {
//        backlog.developer = self
//        if backlog.todos.isEmpty {
//            backlog.addTODO(todo: todo)
//        }
//        backlogs.append(backlog)
//    }
//
//}
//
//class Backlog {
//    weak var developer: Developer?
//    var todos: [TODO] = []
//    let description: String
//    let numberOfSprint: Int
//
//    init(numberOfSprint: Int = 1, description: String = "backlog"){
//        self.numberOfSprint = numberOfSprint
//        self.description = description
//        print("inserting backlog \(String(describing: self.description)) reference")
//    }
//
//    deinit{
//        print("removing backlog \(String(describing: self.description)) reference")
//    }
//
//    func addTODO(todo: TODO) {
//        todo.backlog = self
//        todos.append(todo)
//    }
//}
//
//class TODO {
//    var backlog: Backlog?
//    let description: String
//
//    init(description: String = "todo"){
//        self.description = description
//        print("inserting todo \(String(describing: self.description)) reference")
//    }
//
//    deinit{
//        print("removing todo \(String(describing: self.description)) reference")
//    }
//}
//
//do {
//    let developer = Developer(name: "Robert")
//    let backlog = Backlog(numberOfSprint: 1, description: "initial backlog")
//    let todo = TODO(description: "initial todo")
//
//    backlog.addTODO(todo: todo)
//    developer.addBacklog(backlog: backlog, todo: todo)
//}
//
//
