//
//  ViewController.swift
//  MoviesTables
//
//  Created by Diplomado on 25/05/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let myArrayGenders = ["Horror", "Comedy", "Drama", "Infant"]
    let myArrayMovies = ["Buscando a nemo","Annabelle","Barbie","El rey leon", "El padrino", "Star Wars", "Spiderman","Harry Potter", "Eso" , "Yo antes de ti"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        tableView.register(CollectionTableViewCell.self, forCellReuseIdentifier: CollectionTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArrayGenders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        //cell.textLabel?.text = myArrayGenders[indexPath.row]
        cell.configure(with: myArrayMovies)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}



