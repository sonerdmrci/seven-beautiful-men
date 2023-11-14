//
//  ViewController.swift
//  tableView-cell-xib
//
//  Created by Soner Demirci on 14.11.2023.
//

import UIKit

enum RowTypes {
    case rasim
    case nuri
    case ali
    case alaeddin
    case cahit
    case sezai
    case erdem
}


class ViewController: UIViewController {
    //MARK: - UI Elements
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Properties
    
    var rowTupleList = [Poets]()
    
    let NAVIGATION_TITLE = "YEDİ GÜZEL ADAM"
    let BACK_BUTTON_TITLE = "Geri"
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rowTupleList = [Poets(name: "RASİM ÖZDENÖREN", image: UIImage(named: "rasim")!, rowTypes: .rasim),
                        Poets(name: "NURİ PAKDIL", image: UIImage(named: "nuri")!, rowTypes: .nuri),
                        Poets(name: "ALİ KUTLAY", image: UIImage(named: "ali")!, rowTypes: .ali),
                        Poets(name: "ALAEDDIN ÖZDENÖREN ", image: UIImage(named: "alaeddin")!, rowTypes: .alaeddin),
                        Poets(name: "CAHİT ZARİFOĞLU", image: UIImage(named: "cahit")!, rowTypes: .cahit),
                        Poets(name: "SEZAİ KARAKOÇ", image: UIImage(named: "sezai")!, rowTypes: .sezai),
                        Poets(name: "ERDEM BEYAZIT", image: UIImage(named: "erdem")!, rowTypes: .erdem)]
        
        setTitle()
        setupUI()
    }
    
    //MARK: -functions
    func setupUI(){
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemGray4
        tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        
    }
    
    func setTitle(){
        navigationItem.title = NAVIGATION_TITLE
        navigationItem.backButtonTitle = BACK_BUTTON_TITLE
        
    }
    
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        rowTupleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        
        cell.nameLbl.text = rowTupleList[indexPath.row].name
        cell.profileImage.image = rowTupleList[indexPath.row].image
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let selectData = rowTupleList[indexPath.row]
        
        
        // Hedef view controller'ı instantiate et
        if let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            // Veriyi set et
            vc.receivedData = selectData
            
            // Geçişi gerçekleştir
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}

