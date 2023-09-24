//
//  ViewController.swift
//  PortfolioApp
//
//  Created by Sami Saleh on 9/16/23.
//

import UIKit

private struct MainStruct {
    var section : String
}

class ViewController: UIViewController {


    @IBOutlet var tableview: UITableView!

    fileprivate var list : [MainStruct] = [
        MainStruct(section: "Skillset"),
        MainStruct(section: "Employment"),
        MainStruct(section: "Software Projects"),
        MainStruct(section: "Education")

    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.register(UINib(nibName: TextListTVCell.NibString(), bundle: nil), forCellReuseIdentifier: TextListTVCell.IdentifierString())
        tableview.delegate = self
        tableview.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TextListTVCell.IdentifierString()) as! TextListTVCell

        cell.message_label.text = list[indexPath.row].section

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        if indexPath.row == 0 {

            self.performSegue(withIdentifier: "MainToSkillset", sender: nil)

        } else if indexPath.row == 1 {

            self.performSegue(withIdentifier: "MainToEmployment", sender: nil)

        } else if indexPath.row == 2 {
            self.performSegue(withIdentifier: "MainToProject", sender: nil)

        } else if indexPath.row == 3 {
            self.performSegue(withIdentifier: "MainToEducation", sender: nil)

        } else {
            fatalError("Not a valid index selected")
        }

    }
}
