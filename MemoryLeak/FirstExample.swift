////
////  FirstExample.swift
////  MemoryLeak
////
////  Created by Robson Lima Lopes on 31/10/22.
////
//
//import Foundation
//
//class Developer {
//    var todos: [TODO] = []
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
//    func addTodo(todo: TODO) {
//        todo.developer = self
//        todos.append(todo)
//    }
//}
//
//class TODO {
//    var developer: Developer?
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
//    let todo = TODO(description: "initial todo")
//
//    developer.addTodo(todo: todo)
//}
//
//
