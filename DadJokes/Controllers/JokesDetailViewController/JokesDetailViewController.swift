//
//  JokesDetailViewController.swift
//  DadJokes
//
//  Created by Kelvin Lau on 2017-12-06.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

import UIKit

final class JokesDetailViewController: UIViewController {
  
  class func instantiate(with joke: Joke) -> JokesDetailViewController {
    let storyboard = UIStoryboard(name: "JokesDetailViewController", bundle: nil)
    let jokeVC = storyboard.instantiateInitialViewController() as! JokesDetailViewController
    jokeVC.joke = joke
    return jokeVC
  }
  
  @IBOutlet private var jokePunchlineLabel: UILabel!
  
  private var joke: Joke!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    jokePunchlineLabel.text = joke.punchline
  }
}
