//
//  Copyright © __YEAR__ __COPYRIGHT_HOLDER__. All rights reserved.
//

import UIKit

class __CLASS_PREFIX__ViewController: UIViewController, SegueHandlerType {
    
    enum SegueIdentifier: String {
        case embedTable = "embedTableSegue"
    }

    var __VARIABLE_PREFIX__TableViewController: __CLASS_PREFIX__TableViewController!

    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        switch segueIdentifierForSegue(segue: segue) {

        case .embedTable:
            __VARIABLE_PREFIX__TableViewController = segue.destination as? __CLASS_PREFIX__TableViewController
        
        default:
            break
        }
    }
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
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
}
