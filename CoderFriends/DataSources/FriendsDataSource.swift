//
//  FriendsDataSource.swift
//  CoderFriends
//
//  Created by Apple on 03/02/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation
import UIKit

class FriendsDataSource: NSObject, UITableViewDataSource {
    
    var friends = [Friend]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let friend = friends[indexPath.row]
        
        cell.textLabel?.text = friend.name
        return cell
    }
    
    
}
