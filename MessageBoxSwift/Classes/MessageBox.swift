import UIKit
import TopViewControllerSwift


public func MessageBox(_ message: String
    , title: String? = ""
    , defaultActionTitle: String? = "确定"
    , cancelActionTitle: String? = nil
    , preferredStyle: UIAlertController.Style = .alert
    , defaultHandler: (() ->Void)? = nil
    , cancelHandler: (() -> Void)? = nil)
{
    let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
    
    if let defaultActionTitle = defaultActionTitle {
        
        let defaultAction = UIAlertAction(title: defaultActionTitle, style: .default) { (alert) in
            
            defaultHandler?()
        }
        alert.addAction(defaultAction)
    }
    
    if let cancelActionTitle = cancelActionTitle {
        
        let cancelAction = UIAlertAction(title: cancelActionTitle, style: .cancel) { (alert) in
            cancelHandler?()
        }
        alert.addAction(cancelAction)
    }
    
    let theViewControllerYouSee = TopViewController()
    
    theViewControllerYouSee?.present(alert, animated: true, completion: nil)
}
