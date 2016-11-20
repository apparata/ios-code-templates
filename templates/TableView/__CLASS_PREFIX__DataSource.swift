//
//  Copyright © __YEAR__ __COPYRIGHT_HOLDER__. All rights reserved.
//

import UIKit

class __CLASS_PREFIX__DataSource: NSObject, UITableViewDataSource {

    override init() {
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameOfCell", for: indexPath) // as! NameOfCell
        // cell.configure(modelObject: modelObject)
        return cell
    }
}
