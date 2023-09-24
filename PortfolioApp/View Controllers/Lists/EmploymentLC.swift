//
//  EmploymentLC.swift
//  PortfolioApp
//
//  Created by Sami Saleh on 9/18/23.
//

import UIKit

private struct EmploymentStruct {
    var position : String
    var company : String
    var location : String
    var from : NSDate
    var to : NSDate?
    var descriptionList : [String] = []
}


class EmploymentLC: UIViewController {


    @IBOutlet var tableview: UITableView!



    fileprivate var list : [EmploymentStruct] = [
        EmploymentStruct(position: "Software (Intern)", company: "L3 Technologies", location: "Anaheim, CA", from: NSDate(), descriptionList: [
            "Implemented supplemental data abstraction tools to establish data integrity and validation with a more than 92% accuracy on several high-level projects.",
            "Incorporated, and release documentation redlines for software production.",
            "Integrated and tested newly developed software patches for future deployments",
            "Utilized requirements tracing tools to capture hardware, software, and system requirements from customer requirements."

        ]),
        EmploymentStruct(position: "Senior Associate", company: "L3Harris", location: "Anaheim, CA", from: NSDate(), descriptionList: [
            "Participated in a multi-functional software team undergoing design, implementation, and testing phases on various in-house & supplemental projects using a number of programming principles & languages including C++, Python, and C#.",
            "Tested software-to-software and software-to-hardware integration ensuring customer assurance.",
            "Interface with signal generator hardware API using UDP to perform an optimized >200ms request/response cycle.",
            "Provide code packages for code analysis review and on-time deliveries.",
            "Generate and implement test plans for software redlines reviews with >98% full scope automated test procedure and >95% code coverage.",
            "Took initiative on a newly developed Agile project as a Scrum Master. This include leading standup meetings, resolving blockages, flow down requirements from P.O, and resources shifting in accordance to technical necessities. Use of Confluence to capture artifacts and Jira to maintain the Sprint boards.",
            "Conduct technical research including trade studies, data analysis scripts, and internal software",
            "Participate in mentorship, and technical onboarding to new hire software associates"

        ]),
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Employment"

        tableview.register(UINib(nibName: EmploymentDescriptionTVCell.NibString(), bundle: nil), forCellReuseIdentifier: EmploymentDescriptionTVCell.IdentifierString())
        tableview.dataSource = self
        tableview.delegate = self
    }


}

extension EmploymentLC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let instance = list[section]
        return "\(instance.position) | \(instance.company) | \(instance.location)"
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].descriptionList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EmploymentDescriptionTVCell.IdentifierString()) as! EmploymentDescriptionTVCell

        cell.textview.text = list[indexPath.section].descriptionList[indexPath.row]

        return cell
    }
}
