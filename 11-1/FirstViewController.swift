//
//  ViewController.swift
//  11-1
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 2016110339. All rights reserved.
//

import UIKit
/*
protocol StudentProtocol {
    func change(name:String,No:String)
}
 */
class FirstViewController: UIViewController {
    /*func change(name: String, No: String) {
        self.name = name;
        self.No = No;
    }*/
    /*var No = ""
    var name = ""
 */
    var stu = Student()
    
    @IBOutlet weak var flNo: UITextField!
    @IBOutlet weak var flName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        flNo.text = stu.No
        flName.text = stu.name
    }

    @IBAction func shoeSecondVC(_ sender: Any) {
        stu.No = flNo.text!
        stu.name = flName.text!
        
        let secVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        /*secVC.No = stu.No
        secVC.name = stu.name
        */
        secVC.stu = stu
        //secVC.delegate = self
        /*present(secVC, animated: true, completion: nil)*/
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    
    @IBAction func showThirdVC(_ sender: Any) {
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC")
        present(thirdVC, animated: true, completion: nil
        )
    }
}

