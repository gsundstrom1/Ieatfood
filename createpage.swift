//
//  createpage.swift
//  Ieatfood
//
//  Created by Grant Sundstrom on 10/31/19.
//  Copyright © 2019 Grant Sundstrom. All rights reserved.
//

import UIKit

class createpage: UITableViewController {

    
    @IBOutlet weak var comments: UITextField!
    @IBOutlet weak var rating: UITextField!
    @IBOutlet weak var item: UITextField!
    @IBOutlet weak var place: UITextField!
    @IBAction func SaveB(_ sender: UIButton) {
        
       let defaults: UserDefaults = UserDefaults.standard
                           defaults.set(self.place.text, forKey: "Place")
                           defaults.set(self.item.text, forKey: "Item")
            
        defaults
        .set(self
        .rating
            .text,
        forKey:
        "Rating")
        
        defaults
        .set(self
        .comments
            .text,
        forKey:
        "Comments")
                defaults.synchronize()
               // clear()
                           }
            override func viewDidLoad() {
                  super.viewDidLoad()
                  // Do any additional setup after loading the view.
                  let defaults: UserDefaults = UserDefaults.standard
                        if defaults.string(forKey: "Place") != nil{
                              place.text = defaults.string(forKey: "Place")
                        }
                        if defaults.string(forKey: "Item") != nil{
                            item.text = defaults.string(forKey: "Item")
                        }
                                       if defaults.string(forKey: "Rating") != nil{
                                             rating.text = defaults.string(forKey: "Rating")
        }
                                       if defaults.string(forKey: "Comments") != nil{
                                        comments.text = defaults.string(forKey: "Comments")}
        func clear()
        {
         place.resignFirstResponder()
                item.resignFirstResponder()
            
            rating.resignFirstResponder()
            
            comments.resignFirstResponder()
            }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //override func viewDidLoad() {
       // super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


