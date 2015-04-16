//
//  Niklas.swift
//  WWDC-Niklas-Riekenbrauck
//
//  Created by Niklas Riekenbrauck on 14.04.15.
//  Copyright (c) 2015 nikriek. All rights reserved.
//

import Foundation
import CoreLocation

class NiklasRiekenbrauck {
    static let sharedInstance = NiklasRiekenbrauck()
    
    let firstName = "Niklas"
    let lastName = "Riekenbrauck"
    let location: CLLocation = CLLocation(latitude: 52.5243700, longitude: 13.4105300)
    let projects: Array<Project> = NiklasRiekenbrauck.initProjects()
    let birthday: NSDate = NiklasRiekenbrauck.initBirthday()
    
    func name() -> String {
        return "\(firstName) \(lastName)"
    }
    
    private class func initProjects() -> Array<Project> {
        var firstProject:Project = Project()
        firstProject.name = "myRoRo"
        firstProject.type = .iOS
        firstProject.year = 2012
        
        return [firstProject]
    }
    
    private class func initBirthday() -> NSDate {
        return NSDate()
    }
    
    func initEducation() {
        
    }
}

class Project {
    enum Type{
        case iOS
        case Web
    }
    var type:Type!
    var name: String!
    var description: String!
    var year: Int!
    var thumbnail: UIImage!
    var images: Array<UIImage>!
}
