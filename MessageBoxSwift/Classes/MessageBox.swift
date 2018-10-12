import UIKit
import TopViewControllerSwift


public func MessageBox(_ message: String
    , title: String? = ""
    , defaultActionTitle: String? = "OK"
    , cancelActionTitle: String? = "Cancel"
    , preferredStyle: UIAlertControllerStyle = .alert
    , defaultHandler: (() ->Void)? = nil
    , cancelHandler: (() -> Void)? = nil)
{
    let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
    
    let defaultAction = UIAlertAction(title: defaultActionTitle, style: .default) { (alert) in
        
        if defaultHandler != nil
        {
            defaultHandler!()
        }
    }
    alert.addAction(defaultAction)
    
    if cancelHandler != nil
    {
        let cancelAction = UIAlertAction(title: cancelActionTitle, style: .cancel) { (alert) in
            cancelHandler!()
        }
        alert.addAction(cancelAction)
    }
    
    let theViewControllerYouSee = TopViewController()
    
    theViewControllerYouSee?.present(alert, animated: true, completion: nil)
}
