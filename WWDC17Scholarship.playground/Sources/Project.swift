//
//  Project.swift
//  Filipe Alvarenga
//
//  Created by Filipe Alvarenga on 26/03/17.
//  Copyright (c) 2015 Filipe Alvarenga. All rights reserved.
//

import Foundation
import UIKit

/**
    Project model class.

    - parameter name: The project name.
    - parameter description: The project description.
    - parameter appStore: The URL of the project in App Store.
    - parameter gitHub: The URL of the repository of this project at GitHub.
    - parameter image: The image of this project.
*/

public class Project {
    
    var name: String!
    var description: String!
    var appStore: String?
    var gitHub: String?
    var image: UIImage!
    
    public init(dict: [String: AnyObject]) {
        self.name = dict["name"] as? String ?? "No name"
        self.description = dict["description"] as? String ?? "No description"
        self.appStore = dict["appstore"] as? String
        self.gitHub = dict["github"] as? String
        
        let imageName = dict["imageName"] as! String
        self.image = UIImage(named: imageName)
    }
    
}
