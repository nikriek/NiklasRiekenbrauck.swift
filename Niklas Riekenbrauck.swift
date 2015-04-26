//
//  Niklas.swift
//  WWDC-Niklas-Riekenbrauck
//
//  Created by Niklas Riekenbrauck on 14.04.15.
//  Copyright (c) 2015 nikriek. All rights reserved.
//

import Foundation

class NiklasRiekenbrauck {
    static let sharedInstance = NiklasRiekenbrauck()
    
    let firstName = "Niklas"
    let lastName = "Riekenbrauck"
    let location: NSString = "Berlin, Germany"
    let projects: Array<Project> =  {
        let firstProject:Project = Project()
        firstProject.name = "myRoRo"
        firstProject.type = .iOS
        firstProject.year = 2012
        firstProject.icon = UIImage(named:"myroro-icon.png")!
        firstProject.url = NSURL(string: "http://romain-rolland-oberschule.de/app/")
        firstProject.description = "myRoRo was the very first app I created. It informs students on my former high school about teacher's illness and other course changes."
        firstProject.images = [UIImage(named: "myroro-screenshot-1.png")!, UIImage(named: "myroro-screenshot-2.png")!]
        
        let secondProject:Project = Project()
        secondProject.name = "Shutdown"
        secondProject.type = .iOS
        secondProject.year = 2013
        secondProject.url = NSURL(string: "http://www.nikriek.de/projects/shutdown")
        secondProject.icon = UIImage(named:"shutdown-icon.png")!
        secondProject.description = "Shutdown was a rather simple app. By clicking the big button the app shuts down connected Macs or PCs."
        secondProject.images = [UIImage(named:"shutdown-screenshot-1.png")!, UIImage(named:"shutdown-screenshot-2.png")!]
        
        let thirdProject: Project = Project()
        thirdProject.name = "PlaceCollect"
        thirdProject.type = .iOS
        thirdProject.year = 2013
        thirdProject.url = NSURL(string: "http://hacks.youngrewiredstate.org/events/yrsberlin/platecollect")
        thirdProject.icon = UIImage(named:"platecollect-icon.png")!
        thirdProject.description = "On the hackday \"Jugend hackt\" (German Young Rewired State) me and two partners built PlateCollect. In memory of jewish victims murdered by during Third Reich more than 5,000 Stolpersteine (\"tripping stones\") have been set in the pavements in front of their former residences. PlateCollect pinpoints these \"Stolpersteine\". The app gathers information from different sources about the victim's fate. With this project we were invited to different conferences, so by the European Commission for ICT 2013 – Digital Agenda for Europe."
        thirdProject.images = [UIImage(named:"platecollect-screenshot-1.png")!, UIImage(named:"platecollect-screenshot-2.png")!]
        
        let fourthProject: Project = Project()
        fourthProject.name = "Kolumbus"
        fourthProject.type = .iOS
        fourthProject.year = 2014
        fourthProject.url = NSURL(string: "http://hacks.youngrewiredstate.org/events/jugendhackt/kolumbus-2")
        fourthProject.icon = UIImage(named:"kolumbus-icon.png")!
        fourthProject.description = "At the following of \"Jugend hackt\" in 2014 we built Kolumbus. Our prototype planned a whole city trip based on parameters like as budget and recent visits. We were awarded the first price."
        fourthProject.images = [UIImage(named:"kolumbus-screenshot-1.png")!, UIImage(named:"kolumbus-screenshot-2.png")!]
        
        let fifthProject: Project = Project()
        fifthProject.name = "Allryder"
        fifthProject.type = .iOS
        fifthProject.year = 2014
        fifthProject.icon = UIImage(named:"allryder-icon.png")!
        fifthProject.url = NSURL(string: "https://allryder.com")
        fifthProject.description = "In my period of transition form A-Levels to university I interned as an iOS developer for \"Allryder\". Allryder probably is Berlin's most aspiring company. They build a global platform for urban transport."
        fifthProject.images = [UIImage(named: "allryder-screenshot-1.png")!, UIImage(named: "allryder-screenshot-2.png")!, UIImage(named: "allryder-screenshot-3.png")!]
        
        let sixthProject: Project = Project()
        sixthProject.name = "Project se_cure"
        sixthProject.type = .Web
        sixthProject.year = 2015
        sixthProject.url = NSURL(string: "http://www.projectsecure.org")
        sixthProject.icon = UIImage(named:"projectsecure-icon.png")!
        sixthProject.description = "\"Project se_cure\" is an educational platform for internet security. It offers some advices and corresponding exercises. The user gets coupons for solving these exercises. The project is supported by some major companies. It includes a website and an additional app, which are both in development right now."
        sixthProject.images = [UIImage(named: "projectsecure-screenshot-1.png")!, UIImage(named: "projectsecure-screenshot-2.png")!]
        
        
        return [firstProject,
            secondProject,
            thirdProject,
            fourthProject,
            fifthProject,
            sixthProject]
    }()
    let birthday: NSDate = {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.dateFromString("1996-01-13")!
    }()
    let education: String = {
        return "I am studying IT-Systems Engineering at the Hasso Plattner Institute/University of Potsdam, founded by the name giver Hasso Plattner, chairman of SAP. It is Germany's leading institute for Computer Science, Engineering and Tech Entrepreneurship."
    }()
    let coding: String = {
        return "I started coding on iOS about 4 years ago. I tried a lot of different languages and frameworks, but practising iOS development is still my greatest passion. "
    }()
    
    func name() -> String {
        return "\(firstName) \(lastName)"
    }
    
    func age() -> NSInteger {
        return NSDate().yearsFrom(self.birthday)
    }
}

class Project {
    enum Type{
        case iOS
        case Web
        
        var description: String {
            switch self {
                case .iOS: return "iOS"
                case .Web: return "Web"
            }
        }
    }
    var type:Type!
    var name: String!
    var description: String!
    var year: Int!
    var url: NSURL!
    var icon: UIImage!
    var images: Array<UIImage>!
}
