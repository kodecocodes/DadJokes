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
        Joke(description: "Whyyyyyyyyyyyys?", punchline: "Ola"),
    Joke(description: "What does the father play with his son?", punchline: "Try Catch"),
    Joke(description: "My co-worker told me that I suck at OOP.", punchline: "I can't object")
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
