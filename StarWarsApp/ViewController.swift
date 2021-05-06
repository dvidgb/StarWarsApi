//
//  ViewController.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var getPeopleButton: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.nameLabel.numberOfLines = 0
        
        nameLabel.text = ""
        heightLabel.text = ""
        
        
    }


    
    @IBAction func getPeopleAction(_ sender: Any) {
        
          NetworkingProvider.shared.getUser(id: 1) { (user) in
              //cuando tenemos datos se oculta
              
              
            self.nameLabel.text = user.name
            
            
            
            
              
          } failure: { (error) in
              
              
              // en caso de que ocurre un error nos lo muestra en el label del nombre
              self.nameLabel.text = error.debugDescription
          }
        
    }
    
    
}

