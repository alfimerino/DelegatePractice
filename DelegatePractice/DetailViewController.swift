
import UIKit

class DetailViewController: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "This should be the delegate message"
        view.addSubview(label)
        return label
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Detail ViewController"
        labelConstraints()
    }
    
    func labelConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}


 
