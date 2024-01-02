//
//  MainViewController.swift
//  tableView-cell-xib
//
//  Created by Soner Demirci on 14.11.2023.
//

import UIKit

class MainViewController: UIViewController {
    //MARK: - UI Elements
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Properties
    var rowTupleList = [Poets]()
    
    let NAVIGATION_TITLE = "YEDİ GÜZEL ADAM"
    let BACK_BUTTON_TITLE = "Geri"
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        pageData()
        setupUI()
    }
    
    //MARK: -functions
    func setupUI(){
        setTitle()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .systemGray4
        tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
    }
    
    func pageData(){
        rowTupleList = [
            Poets(id: 0, name: "RASİM ÖZDENÖREN", image: UIImage(named: "rasim")!),
            Poets(id: 1, name: "NURİ PAKDIL", image: UIImage(named: "nuri")!),
            Poets(id: 2, name: "ALİ KUTLAY", image: UIImage(named: "ali")!),
            Poets(id: 3, name: "ALAEDDIN ÖZDENÖREN ", image: UIImage(named: "alaeddin")!),
            Poets(id: 4, name: "CAHİT ZARİFOĞLU", image: UIImage(named: "cahit")!),
            Poets(id: 5, name: "SEZAİ KARAKOÇ", image: UIImage(named: "sezai")!),
            Poets(id: 6, name: "ERDEM BEYAZIT", image: UIImage(named: "erdem")!)
        ]
    }
    
    func setTitle(){
        navigationItem.title = NAVIGATION_TITLE
        navigationItem.backButtonTitle = BACK_BUTTON_TITLE
    }
}
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        rowTupleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = rowTupleList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        cell.nameLbl.text = item.name
        cell.profileImage.image = item.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let selectData = rowTupleList[indexPath.row]
        
        if let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            vc.receivedData = selectData
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}


