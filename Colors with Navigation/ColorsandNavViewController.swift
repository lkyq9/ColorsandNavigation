//
//  ColorsandNavViewController.swift
//  Colors with Navigation
//
//  Created by Lydia Krasucki on 10/27/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import UIKit

class ColorsandNavViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = [
        Color(name: "Red", uiColor: UIColor.red),
        Color(name: "Orange", uiColor: UIColor.orange),
        Color(name: "Yellow", uiColor: UIColor.yellow),
        Color(name: "Green", uiColor: UIColor.green),
        Color(name: "Blue", uiColor: UIColor.blue),
        Color(name: "Purple", uiColor: UIColor.purple),
        Color(name: "Brown", uiColor: UIColor.brown)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Colors"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorsandNavCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.uiColor
    
    cell.textLabel?.text = colors[indexPath.row]
    return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       if let destination = segue.destination as? ColordetailViewController
        destination.color = tableView.
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
