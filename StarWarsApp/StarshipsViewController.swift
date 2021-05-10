//
//  StarshipsViewController.swift
//  StarWarsApp
//
//  Created by David Bueno on 6/5/21.
//

import UIKit
import Alamofire

class StarshipsViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    private let kBaseUrl = "https://swapi.dev/api/"
    
    var items: [CustomStringConvertible] = []

    @IBOutlet weak var titletextlabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        
       
        getDataFromApi()

    }//fin viewDidLoad
    
    
    func getDataFromApi(){
        
            
            let url = "\(kBaseUrl)starships/"
        
        
            AF.request(url)
          .validate()
                .responseDecodable(of: Starships.self) { (response) in
            guard let starships = response.value else { return }
                    //print(starships.all[0].name)
                    self.items = starships.all
                    self.tableView?.reloadData()
          }
    }//fin método
    
    
}

    


extension StarshipsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        var cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
        
        let item = items[indexPath.row]
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "mycell")
            
                
            cell!.textLabel?.text = item.description
        
        return cell!

        }else{
            return cell!
        }
}
    
}
