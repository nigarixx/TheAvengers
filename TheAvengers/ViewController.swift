//
//  ViewController.swift
//  TheAvengers
//
//  Created by Nigar Alaskarova on 27.03.24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    var avengerheros = [Hero]()
    var chosenHero : Hero?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let captain = Hero(name: "Captain America", realName: "Steve Rogers", power: "No Superpower", image: UIImage(named: "captainamerica")!)
        let ironman = Hero(name: "Iron Man", realName: "Tony Stark", power: "Superhuman strength and durability, flight, and an array of weapons", image: UIImage(named: "ironman")!)
        let hulk = Hero(name: "Hulk", realName: "Robert Bruce Banner,", power: "To leap great distances and land without harm to himself", image: UIImage(named: "hulk")!)
        let spiderman = Hero(name: "Spiderman", realName: "Peter Benjamin Parker", power: "Lift nearly 10 tons and to leap and move at incredible speeds with high accuracy", image: UIImage(named: "spiderman")!)
        let blackwidow = Hero(name: "Black Widow", realName: "Natasha Romanova", power: "Strength, agility, and stamina", image: UIImage(named: "blackwidow")!)
        let thor = Hero(name: "Thor", realName: "Thor Odinson", power: "Superhuman strength, speed, agility, durability and immunity to most diseases", image: UIImage(named: "thor")!)
        let drstrange = Hero(name: "Dr. Strange", realName: "Stephen Vincent Strange", power: "Use his spells to bind opponents and create complex shields and barriers", image: UIImage(named: "drstrange")!)
        
        avengerheros.append(captain)
        avengerheros.append(ironman)
        avengerheros.append(hulk)
        avengerheros.append(spiderman)
        avengerheros.append(blackwidow)
        avengerheros.append(thor)
        avengerheros.append(drstrange)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        avengerheros.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = avengerheros[indexPath.row].name
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenHero = avengerheros[indexPath.row]
        self.performSegue(withIdentifier: "toDetailtsVC", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailtsVC" {
            let destinationVC = segue.destination as? detailsVC
            destinationVC?.selectedHero = chosenHero
        }
    }
}

