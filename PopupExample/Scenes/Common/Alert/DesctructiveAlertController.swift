//
//  DesctructiveAlertController.swift
//  PopupExample
//
//  Created by Jaewon on 2022/08/31.
//

import UIKit

final class DestructiveAlertController: UIAlertController {

    convenience init(
        title: String?,
        message: String?,
        destructionTitle: String?,
        destructionHandler: ((UIAlertAction) -> Void)? = nil,
        cancelTitle: String? = "Cancel",
        cancelHandler: ((UIAlertAction) -> Void)? = nil
    ) {
        self.init(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let destructiveAction: UIAlertAction = .init(
            title: destructionTitle,
            style: .destructive,
            handler: destructionHandler
        )
        let cancelAction: UIAlertAction = .init(
            title: cancelTitle,
            style: .cancel,
            handler: cancelHandler
        )
        
        self.addAction(cancelAction)
        self.addAction(destructiveAction)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
