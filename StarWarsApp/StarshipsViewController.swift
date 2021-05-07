//
//  StarshipsViewController.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import UIKit

class StarshipsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.nameLabel.numberOfLines = 0
        
        nameLabel.text = ""
    }


    
    @IBAction func getStarshipAction(_ sender: Any) {
        
        NetworkingProvider.shared.getStarship(id: 2) { (starship) in
            //cuando tenemos datos se oculta
            
            
            self.nameLabel.text = starship.model
          
        
        } failure: { (error) in
            
            
            // en caso de que ocurre un error nos lo muestra en el label del nombre
            self.nameLabel.text = error.debugDescription
        }
    }
    
}



