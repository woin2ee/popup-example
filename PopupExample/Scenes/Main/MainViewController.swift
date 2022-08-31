//
//  MainViewController.swift
//  PopupExample
//
//  Created by Jaewon on 2022/08/31.
//

import UIKit

final class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapAlertViewButton(_ sender: UIButton) {
        let alertVC: UIAlertController = .init(
            title: "Alert",
            message: "alert",
            preferredStyle: .alert
        )
        let okAction: UIAlertAction = .init(
            title: "Ok",
            style: .default,
            handler: { _ in
                print("ok")
            }
        )
        let cancelAction: UIAlertAction = .init(
            title: "Cancel",
            style: .cancel,
            handler: { _ in
                print("cancel")
            }
        )
        
        alertVC.addAction(cancelAction)
        alertVC.addAction(okAction)
        
        self.present(alertVC, animated: true)
    }
    
    @IBAction func didTapAlertView2Button(_ sender: UIButton) {
        let alertVC: DestructiveAlertController = .init(
            title: "경고",
            message: "정말로 삭제하시겠습니까?",
            destructionTitle: "Delete",
            destructionHandler: { _ in
                print("Delete")
            }
        )
        self.present(alertVC, animated: true)
    }
    
    @IBAction func didTapPopupViewButton(_ sender: UIButton) {
        let storyboard: UIStoryboard = .init(name: "LoginPopup", bundle: nil)
        let identifier = String.init(describing: LoginPopupViewController.self)
        let popupVC = storyboard.instantiateViewController(withIdentifier: identifier)
        popupVC.modalPresentationStyle = .overCurrentContext
        popupVC.modalTransitionStyle = .crossDissolve
        self.present(popupVC, animated: true)
    }
}
