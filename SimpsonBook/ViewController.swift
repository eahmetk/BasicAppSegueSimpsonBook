//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ahmet on 22.12.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var mySimpsons = [simpson]()
    var chosenSimpson : simpson?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = simpson(simpsonName: "homer", simpsonJob: "nuclear safety", simpsonImage: UIImage(named:"homer")!)
        let lisa = simpson(simpsonName: "lisa", simpsonJob: "teacher", simpsonImage: UIImage(named:"lisa")!)
        let marge = simpson(simpsonName: "marge", simpsonJob: "doctor", simpsonImage: UIImage(named:"marge")!)
        let bart = simpson(simpsonName: "bart", simpsonJob: "pilot", simpsonImage: UIImage(named:"bart")!)
        let figuran = simpson(simpsonName: "figuran", simpsonJob: "artist", simpsonImage: UIImage(named:"figuran")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(lisa)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(figuran)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count-1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
        
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
    


}

