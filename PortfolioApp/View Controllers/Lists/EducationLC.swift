//
//  EducationLC.swift
//  PortfolioApp
//
//  Created by Sami Saleh on 9/18/23.
//

import UIKit

private struct EducationStruct {
    var degree : String
    var college : String
}

class EducationLC: UIViewController {

    @IBOutlet var tableview: UITableView!

    fileprivate var list : [EducationStruct] = [
        EducationStruct(degree: "M.S Software Engineering", college: "Cal State Fullerton"),
        EducationStruct(degree: "B.S Computer Science", college: "Cal State Fullerton")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.register(UINib(nibName: TextListTVCell.NibString(), bundle: nil), forCellReuseIdentifier: TextListTVCell.IdentifierString())
        tableview.dataSource = self
        tableview.delegate = self

    }
    



}



extension EducationLC: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return list[section].degree
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TextListTVCell.IdentifierString()) as! TextListTVCell



        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
