//
//  ViewController2.swift
//  ESTabBarControllerDemo
//
//  Created by zgpeace on 28/05/2017.
//  Copyright © 2017 zgpeace. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = RGB(0, 255, 255);
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let tabBarItem = self.tabBarItem as? ESTabBarItem {
            DispatchQueue.main.asyncAfter(deadline: .now(), execute: {
                tabBarItem.badgeValue = nil
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
