import UIKit

class JourneyRecordVC: UITableViewController {

    
    let cellId = "cellId"
    
    let JourneyList = [
        journeyArray(title: "Day in Napoli", description: "it was fantastic"),
        journeyArray(title: "Trip in Rome", description: "Great")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        return
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let journeys = self.JourneyList[indexPath.row]
        cell.textLabel?.text = journeys.title
        cell.detailTextLabel?.text = journeys.description
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return JourneyList.count
    }
    

    
    
    
}
