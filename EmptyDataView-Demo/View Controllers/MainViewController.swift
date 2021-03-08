//
//  ViewController.swift
//  EmptyDataView-Demo
//
//  Created by Anup Deshpande on 3/8/21.
//

import UIKit
import EmptyDataView

class MainViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var colorList = ColorData.getColors()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    @IBAction func loadDataTapped(_ sender: UIBarButtonItem) {
        colorList = ColorData.getColors()
        tableView.reloadData()
    }
    
    @IBAction func removeDataTapped(_ sender: UIBarButtonItem) {
        colorList.removeAll()
        tableView.reloadData()
    }
}


// MARK: - Table view related methods
extension MainViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension MainViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Load empty data view if tableData is empty
        if colorList.isEmpty{
            tableView.setEmptyDataView(image: UIImage(systemName: "paintpalette")!, title: "No colors in the palette")
        }else{
            tableView.removeEmptyDataView()
        }
        
        return colorList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let colorCell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        colorCell.textLabel?.text = colorList[indexPath.row]
        return colorCell
    }
}
