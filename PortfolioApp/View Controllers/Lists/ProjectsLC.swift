//
//  ProjectsLC.swift
//  PortfolioApp
//
//  Created by Sami Saleh on 9/18/23.
//

import UIKit

private struct ProjectStruct {
    var title : String
    var link : String
    var descriptionList : [String] = []
}

class ProjectsLC: UIViewController {


    @IBOutlet var tableview: UITableView!

    fileprivate var list : [ProjectStruct] = [
        ProjectStruct(title: "Restaurant Service Server", link: ""),
        ProjectStruct(title: "Restaurant iOS App", link: ""),
        ProjectStruct(title: "Restaurant Software", link: ""),

    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.register(UINib(nibName: TextListTVCell.NibString(), bundle: nil), forCellReuseIdentifier: TextListTVCell.IdentifierString())
        tableview.delegate = self
        tableview.dataSource = self
    }
    

}


extension ProjectsLC: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return list[section].title
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].descriptionList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TextListTVCell.IdentifierString()) as! TextListTVCell



        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
