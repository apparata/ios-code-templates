//
//  Copyright © __YEAR__ __COPYRIGHT_HOLDER__. All rights reserved.
//

import UIKit

public extension UITableViewController {

    public func hideSeparatorsBetweenUnusedCells() {
        tableView.tableFooterView = UIView(frame: CGRect.zero)
    }

    public func hideTopGroupPadding() {
        if tableView.style == .grouped {
            // avoid the 35pt top margin in grouped table views
            let frame = CGRect(x: 0, y: 0, width: tableView.bounds.width, height: CGFloat.leastNormalMagnitude)
            tableView.tableHeaderView = UIView(frame: frame)
        }
    }
}
