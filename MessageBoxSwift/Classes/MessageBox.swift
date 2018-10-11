import UIKit
import TopViewControllerSwift


public func MessageBox(_ title: String
    , message: String? = nil
    , preferredStyle: UIAlertControllerStyle = .alert
    , defaultActionTitle: String? = "确定"
    , cancelActionTitle: String? = "取消"
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
