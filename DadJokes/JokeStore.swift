//
//  JokeStore.swift
//  DadJokes
//
//  Created by Kelvin Lau on 2017-12-06.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

struct JokeStore {
  
  /// we NEED more jokes here!!!
  private var storage: [Joke] = [
    Joke(description: "You should be careful with functions that return a value...",
         punchline: "In fact, I would just a void them."),
    Joke(description: "What does the father play with his son?",
         punchline: "Try Catch")
  ]
}

extension JokeStore: RandomAccessCollection {
  
  var startIndex: Int {
    return storage.startIndex
  }
  
  var endIndex: Int {
    return storage.endIndex
  }
  
  func index(before index: Int) -> Int {
    return storage.index(before: index)
  }
  
  func index(after index: Int) -> Int {
    return storage.index(after: index)
  }
  
  subscript(index: Int) -> Joke {
    return storage[index]
  }
}
