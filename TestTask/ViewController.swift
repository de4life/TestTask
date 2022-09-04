//
//  ViewController.swift
//  TestTask
//
//  Created by Артур Агеев on 28.01.2022.
//

import UIKit


class ViewController: UIViewController {
// MARK: - Outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
   
    @IBOutlet weak var tableView: UITableView!
// MARK: - Public
    var stringArr: Set<String> = []


// MARK: - Initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
// MARK: - Action button
    @IBAction func button(_ sender: Any) {
        if let title = textField1.text,
           let years = Int(textField2.text!) {
            self.stringArr.insert(title + ("\(years)"))
            tableView.reloadSections(IndexSet(integer: 0), with: .right)
            
            textField1.text = nil
            textField2.text = nil
        }
        }
    }

// MARK: - Table View
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stringArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        cell.lblMovie.text = Array(stringArr)[indexPath.row]
        if indexPath.row % 1 == 1 {
            print("This movie already exists.")
        } else {
            cell.contentView.backgroundColor = .white

        }
//        if indexPath.row % 1 == 0 {
//            cell.contentView.backgroundColor = .lightGray
//        } else {
//            cell.lblMovie.text = ""
//        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
