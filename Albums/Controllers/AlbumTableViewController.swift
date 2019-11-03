//
//  AlbumTableViewController.swift
//  Albums
//
//  Created by Joe Thunder on 10/30/19.
//  Copyright © 2019 LambdaSchool. All rights reserved.
//

import UIKit

class AlbumTableViewController: UITableViewController {
    
   
    var albums: [Album] = []
    var AlbumController = AlbumControllers()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return albums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumCell", for: indexPath) as? AlbumTableViewCell else { return AlbumTableViewCell()}

        let albumCell = albums[indexPath.row]
        cell.album = albumCell
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAddAlbum" {
            if let albumAddVC = segue.destination as? DetailAddViewController {
                albumAddVC.albumDelegate = self
            }
        } else if segue.identifier == "ToAlbumDetail" {
           if let albumDetailVC = segue.destination as? DetailAddViewController {
            if let indexPath = tableView.indexPathForSelectedRow {
                albumDetailVC.newAlbum = albums[indexPath.row]
                }
            }
        }
    }
    

}

extension AlbumTableViewController: AddAlbumDelegate {
    func albumWasAdded(_ newAlbum: Album) {
        albums.append(newAlbum)
    }
}
