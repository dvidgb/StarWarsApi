//
//  ViewController.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    @IBOutlet weak var getPeopleButton: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.nameLabel?.numberOfLines = 0
        
        nameLabel?.text = ""
        
        
    }
    
   


    
    @IBAction func getPeopleAction(_ sender: Any) {
        
          NetworkingProvider.shared.getUser(id: 1) { (user) in
              //cuando tenemos datos se oculta
              
              
            self.nameLabel.text = user.name
            
          
          } failure: { (error) in
              
              
              // en caso de que ocurre un error nos lo muestra en el label del nombre
              self.nameLabel.text = error.debugDescription
          }
        
    }//fin PeopleAction
    
    
    @IBAction func getStarshipsAction(_ sender: Any) {
       
        // Register Nib
        let newViewController = StarshipsViewController(nibName: "StarshipsView", bundle: nil)
        // Present View "Modally"
        self.present(newViewController, animated: true, completion: nil)
    }
    
}
