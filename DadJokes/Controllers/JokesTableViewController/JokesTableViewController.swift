//
//  JokesTableViewController.swift
//  DadJokes
//
//  Created by Kelvin Lau on 2017-12-06.
//  Copyright © 2017 Kelvin Lau. All rights reserved.
//

import UIKit

final class JokesTableViewController: UITableViewController {

  private let jokeStore = JokeStore()
}


// MARK: - DataSource and Delegate methods
extension JokesTableViewController {
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return jokeStore.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
    let joke = jokeStore[indexPath.row]
    cell.textLabel!.text = joke.description
    return cell
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    let jokeDetailVC = JokesDetailViewController.instantiate(with: jokeStore[indexPath.row])
    navigationController?.pushViewController(jokeDetailVC, animated: true)
  }
}
