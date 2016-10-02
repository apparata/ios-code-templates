//
//  Copyright © __YEAR__ __COPYRIGHT_HOLDER__. All rights reserved.
//

import UIKit

/// Handle segue identifiers in a more typesafe manner.
///
/// Example:
/// ```
/// class ImportPhotoViewController: UIViewController, SegueHandlerType {
///
///   enum SegueIdentifier : String {
///     case showImagePicker = "ShowImagePickerSegue"
///     case showCamera = "ShowCameraSegue"
///   }
///
///   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
///     switch segueIdentifierForSegue(segue) {
///     case .showImagePicker:
///       // Do stuff
///     case .showCamera:
///       // Do stuff
///     }
///   }
///
///   @IBAction func showImagePickerAction() {
///       performSegueWithIdentifier(.showImagePicker, sender: nil)
///   }
/// }
/// ```
///
protocol SegueHandlerType {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String
{
    
    func performSegueWithIdentifier(segueIdentifier: SegueIdentifier,
                                    sender: AnyObject?) {
        
        performSegue(withIdentifier: segueIdentifier.rawValue, sender: sender)
    }
    
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier {
        
        guard let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: identifier) else {
                fatalError("Invalid segue identifier \(segue.identifier).")
        }
        
        return segueIdentifier
    }
}
