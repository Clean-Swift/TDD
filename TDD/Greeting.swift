//
//  Greeting.swift
//  TDD
//
//  Created by Raymond Law on 4/4/18.
//  Copyright © 2018 Clean Swift LLC. All rights reserved.
//

import Foundation

class Greeting
{
  // NOTE: Before refactoring, we use the if-else implementation
  
//  func generate(firstName: String?, lastName: String?) -> String?
//  {
//    if let firstName = firstName, let lastName = lastName {
//      return "Good to see you, Mr. \(firstName) \(lastName)."
//    }
//
//    if let firstName = firstName {
//      return "Hi \(firstName)."
//    }
//
//    if let lastName = lastName {
//      return "Hello, Mr. \(lastName)."
//    }
//
//    return nil
//  }
  
  // NOTE: After refactoring, we use the switch-case implementation
  
  func generate(firstName: String?, lastName: String?) -> String?
  {
    switch (firstName, lastName)
    {
    case let (firstName, lastName) where firstName != nil && lastName != nil:
      return "Good to see you, Mr. \(firstName!) \(lastName!)."
      
    case let (firstName, nil) where firstName != nil:
      return "Hi \(firstName!)."
      
    case let (nil, lastName) where lastName != nil:
      return "Hello, Mr. \(lastName!)."
      
    default:
      return nil
    }
  }
}
