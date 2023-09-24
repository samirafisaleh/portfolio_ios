//
//  SkillsetLC.swift
//  PortfolioApp
//
//  Created by Sami Saleh on 9/18/23.
//

import UIKit

private struct SkillSetItem {
    var title : String
    var list : [String]
}

class SkillsetLC: UIViewController {


    @IBOutlet var tableview: UITableView!



    fileprivate let list : [SkillSetItem] = [
        SkillSetItem(title: "Programming Languages", list: ["Python", "Swift", "SwiftUI", "QT/C++", "Visual Basic", "C#", "NodeJS"]),
        SkillSetItem(title: "Frameworks", list: ["Django", "FastAPI", "ExpressJS"]),
        SkillSetItem(title: "Database", list: ["PostgreSQL, MongoDB, Redis"]),
        SkillSetItem(title: "DevOps", list: ["Jenkins"]),
        SkillSetItem(title: "Python Toolset", list: ["Pip", "Celery", "Gunicorn", "Flower", "Supervisor"]),
        SkillSetItem(title: "Swift Toolset", list: ["CocoaPods", "Alamofire", "Keychain"]),
        SkillSetItem(title: "API Toolset", list: ["Postman"]),
        SkillSetItem(title: "Source Code Repository", list: ["GitHub", "Version Manager"]),
        SkillSetItem(title: "Software Dev Tools", list: ["Jira", "CodeDX", "Understand for C++", "Polyspace"]),
        SkillSetItem(title: "Test Frameworks", list: ["Pytest", "Postman API Collection", "QT Unit Test"]),
        SkillSetItem(title: "Authentication", list: ["OAuth 2.0", "JWT"]),
        SkillSetItem(title: "Additional", list: ["Nginx", "Sentry reporting", "Trello", "Confluence"]),
        SkillSetItem(title: "Non-technical", list: ["Microsoft Suite: Word, Excel, PowerPoint"])


    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Skillset"

        tableview.register(UINib(nibName: TextListTVCell.NibString(), bundle: nil), forCellReuseIdentifier: TextListTVCell.IdentifierString())
        tableview.delegate = self
        tableview.dataSource = self

    }
    

}


extension SkillsetLC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return list[section].title
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TextListTVCell.IdentifierString()) as! TextListTVCell

        cell.message_label.text = list[indexPath.section].list[indexPath.row]

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
