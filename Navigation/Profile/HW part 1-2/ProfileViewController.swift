import UIKit

class ProfileViewController: UIViewController {
    
    fileprivate let post = Post.make()
    
    private let tableView: UITableView = {
        let tableView = UITableView.init(
            frame: .zero,
            style: .grouped
        )
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupUI()
        setupTableView()
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "Post")
    }
    
    private func setupTableView() {
        //         4. Указываем основные делегаты таблицы
        tableView.delegate = self
        tableView.dataSource = self
        //
    }
    private func setupUI() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    
    extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
       
        //        количество ячеек по количеству постов
        func tableView(
            _ tableView: UITableView,
            numberOfRowsInSection section: Int
        ) -> Int {
            post.count /* можно поставить просто цифру -напр.4 */
        }
        
        func tableView(
            _ tableView: UITableView,
            cellForRowAt indexPath: IndexPath
        ) -> UITableViewCell {
            guard let cell =
                    tableView.dequeueReusableCell(withIdentifier:
                                                    "Post", for: indexPath
                    ) as? PostTableViewCell else { return UITableViewCell() }
            let post = post[indexPath.row]
            cell.configure(with: post)
            return cell
        }
    }
}

