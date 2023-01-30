//
//  ViewController.swift
//  HelloWord
//
//  Created by Phước Lộc Đinh Tạ on 29/01/2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myTextField:UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabelNumberClick: UILabel!
    @IBOutlet weak var myTextField2: UITextField!
    
    @IBOutlet weak var Number2: UITextField!
    @IBOutlet weak var Number1: UITextField!
    @IBOutlet weak var ResultSum: UILabel!
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        ResultSum.text = "0"
        // Do any additional setup after loading the view.
        let myButton = UIButton(frame: CGRect(x: 100, y: 600, width: 100, height: 50))
        myButton.setTitle("Click Me !!", for: .normal)
        myButton.setTitleColor(UIColor.green, for: .normal)
        myButton.setTitleColor(UIColor.red, for: .highlighted) // Ở trạng thái nhấn hoặc nhấn giữ nó sẽ thay dổi màu
        myButton.backgroundColor = UIColor.blue
        myButton.addTarget(self, action: #selector(myButtonClick), for: .touchUpInside) // #selector(myButtonClick)  -> gọi đến hàm thực thi
       
        self.view.addSubview(myButton) // xuất Ui ra view
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        // Đóng bàn phím khi nhấn ngoài
        view.addGestureRecognizer(tapGesture)
        myLabelNumberClick.text = "0"
    }

    @IBAction func ActionClicked(_ sender:Any){
        let Text = myTextField.text ?? "";
        myLabel.text = Text
    }

    @objc func myButtonClick(_ sender : UIButton){
        count += 1
        myLabelNumberClick.text = String(count)
    }
   
     
    @IBAction func ShowAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert", message: "this is Alert Style Alert", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default){_ in
            print("Action Ok Clicked")
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel){_ in
            print("Action Cancel Clicked")
        }
        let actionDestructive = UIAlertAction(title: "Destructive", style: .destructive){_ in
            print("Action Destructive Clicked")
        }
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        alertController.addAction(actionDestructive)
        
        //addAction -> Thêm hành động vào alert
        self.present(alertController, animated: true)
        // Xuất các hành động vào UIAlertController
    }
    
    @IBAction func ShowAlertActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert", message: "this is Alert Style Action Sheet", preferredStyle: .actionSheet)
        let actionOk = UIAlertAction(title: "Ok", style: .default){_ in
            print("Action Ok Clicked")
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel){_ in
            print("Action Cancel Clicked")
        }
        let actionDestructive = UIAlertAction(title: "Destructive", style: .destructive){_ in
            print("Action Destructive Clicked")
        }
        alertController.addAction(actionOk)
        alertController.addAction(actionCancel)
        alertController.addAction(actionDestructive)
        self.present(alertController, animated: true)
    }
    
    
    @IBAction func SumTowNumbers(_ sender: Any) {
        let number1 = Int(Number1.text ?? "") ?? 0
        let number2 = Int(Number2.text ?? "") ?? 0
      
        let sum = number1+number2
      
        ResultSum.text = String(sum)
        
    }
    
    
}

