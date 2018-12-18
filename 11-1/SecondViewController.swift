//
//  SecondViewController.swift
//  11-1
//
//  Created by student on 2018/12/15.
//  Copyright © 2018年 2016110339. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    /*var No = ""
    var name = "" */
    var stu: Student!
    
    //var delegate:StudentProtocol?
    
    @IBOutlet weak var flNo: UITextField!
    @IBOutlet weak var flName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        flName.text = stu.name
        flNo.text = stu.No
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: Any) {
        //dismiss(animated: true, completion: nil)
        
        stu.name = flName.text!
        stu.No = flNo.text!
        
        // delegate?.change(name: name, No: No)
        /*
        for vc in self.navigationController!.viewControllers{
            if let firstVC = vc as? FirstViewController{
                firstVC.No = No
                firstVC.name = name
            }
        }
 */
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
