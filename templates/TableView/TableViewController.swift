//
//  Copyright © __YEAR__ __COPYRIGHT_HOLDER__. All rights reserved.
//

import UIKit

class __CLASS_PREFIX__TableViewController: UITableViewController, SegueHandlerType {
    
    enum SegueIdentifier: String {
        //case example = "exampleSegue"
    }
    
    var dataSource: __CLASS_PREFIX__DataSource!

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureAppearance()
        configureDataSource()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    // MARK: - Data Source
    
    private func configureDataSource() {
        dataSource = __CLASS_PREFIX__DataSource()
        tableView.dataSource = dataSource
    }
    
    // MARK: - Appearance
    
    private func configureAppearance() {
        //tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.hideSeparatorsBetweenUnusedCells()
        //tableView.hideTopGroupPadding()
    }    
}
