//
//  ViewController.swift
//  tabela-dinamica-refeicoes
//
//  Created by Marcel Leite de Farias on 28/09/23.
//

import UIKit

class ViewController: UITableViewController {

    //para criar uma tabela dinamica precisamos de
    //numero de linhas
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    //conteudo da celula
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        celula.textLabel?.text = refeicao
        
        return celula
    }
    
    
    let refeicoes: [String] = ["churros", "macarrones", "pizza", "hotdog"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Table view controller foi carregada!")
    }
    
    


}

