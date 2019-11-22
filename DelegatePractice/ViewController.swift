import UIKit

class ViewController: UIViewController {

    private var dataSource = [Person]()
    
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 80
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main ViewController"
        view.addSubview(tableView)
        tableView.pin(to: view)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.cellId)
        dataSource = fetchData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.cellId, for: indexPath) as! TableViewCell
        
        let thisCellData = dataSource[indexPath.row]
        cell.configure(with: thisCellData)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = dataSource[indexPath.row]
        
        
        navigationController?.present(DetailViewController(), animated: false)
    }
    
    func fetchData() -> [Person] {
        let people = [
            Person(name: "Tommy"),
            Person(name: "Jimmy"),
            Person(name: "Lady"),
            Person(name: "Joe"),
            Person(name: "Harry"),
            Person(name: "Nancy"),
            Person(name: "Brandy"),
            Person(name: "Peter"),
            Person(name: "Jessica"),
            Person(name: "PAPAYA"),
        ]
        return people
    }
    
}

extension UIView {
    func pin(to superView: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
        ])
    }
}
