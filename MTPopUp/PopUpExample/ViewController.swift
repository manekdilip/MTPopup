//
//  ViewController.swift
//  PopUpExample
//
//  Created by Devubha Manek on 6/17/16.
//  Copyright © 2016 Devubha Manek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
//MARK: - Variable Decalaration
    var screenWidth:CGFloat!
    var screenHeight:CGFloat!
    
    var tblListOfPopUp:UITableView!
    var arrListOfPopUpName:NSArray!
    
//MARK : - Life Cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        screenWidth = UIScreen.main.bounds.size.width
        screenHeight = UIScreen.main.bounds.size.height
        
        arrListOfPopUpName = [
            "Top to move center",
            "Bottom to move center",
            "Left to move center",
            "Right to move center",
            "Fade-In / Fade Out",
            "Zoom-In / Zoom-Out",
            "Expand View Animation",
            "Rotation Animation"
        ]
        
        tblListOfPopUp = UITableView(frame: CGRect(x: 5, y: 20, width: screenWidth - 10, height: screenHeight - 25))
        tblListOfPopUp.separatorStyle = .none
        tblListOfPopUp.delegate = self
        tblListOfPopUp.dataSource = self
        tblListOfPopUp.rowHeight = 50
        tblListOfPopUp.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1)
        self.view.addSubview(tblListOfPopUp)
            
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
//MARK : - Table View Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if indexPath.row == 0 {
            MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                }, view: self.view, animationType: MTAnimation.TopToMoveCenter, strMessage: "You've just displayed this awesome Pop Up View", btnArray: ["Done"], strTitle: "Congratulations")
        }
        else if indexPath.row == 1 {
            MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                }, view: self.view, animationType: MTAnimation.BottomToMoveCenter, strMessage: "Select any button.", btnArray: ["One Button","Two Button","Three Button , Four Button , Five Button","Six Button","Seven Button","Eight Button","Nine Button","Ten Button , Elevan Button , Twelve Button , Threeten Button"], strTitle: "Multiple Buttons")
        }
        else if indexPath.row == 2 {
            MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                }, view: self.view, animationType: MTAnimation.LeftToMoveCenter, strMessage: "Developing an interactive and effective mobile application is not an easy task. Yet many people believe that the job of a mobile developer is not a tough one, while a few also believe the exact opposite.", btnArray: [])
        }
        else if indexPath.row == 3 {
            MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                
                }, view: self.view, animationType: MTAnimation.RightToMoveCenter, strMessage: "Every software developer is into mobile apps nowadays because its technology has revolutionized how the citizens of the world work, stay informed, and shop. A great majority of people around the world now owns a mobile phone, even children just starting school.", btnArray: [], strTitle: "How to Choose the Best Mobile App Technology")
        }
        else if indexPath.row == 4 {
            MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                }, view: self.view, animationType: MTAnimation.FadeIn_FadeOut, strMessage: "Are you sure you want to proceed?", btnArray: ["Yes","No"])
        }
        else if indexPath.row == 5 {
            MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                }, view: self.view, animationType: MTAnimation.ZoomIn_ZoomOut, strMessage: "Are you sure want to logout?", btnArray: ["Ok","Cancel"], strTitle: "Logout")
        }
        else if indexPath.row == 6 {
            MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                }, view: self.view, animationType: MTAnimation.ExpandViewAnimation, strMessage: "Are you sure want to logout?", btnArray: ["Ok","Cancel"], strTitle: "Logout")
        }
        else if indexPath.row == 7 {
            MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                }, view: self.view, animationType: MTAnimation.RotationAnimation, strMessage: "Are you sure want to logout?", btnArray: ["Ok","Cancel"], strTitle: "Logout")
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrListOfPopUpName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: UITableViewCell = UITableViewCell(style: .subtitle, reuseIdentifier: "PopUpCell")
        
        let viewSep = UIView(frame: CGRect(x: 0, y: 49, width: screenWidth, height: 1))
        viewSep.backgroundColor = UIColor.black
        cell.contentView.addSubview(viewSep)
        cell.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        cell.textLabel?.text = arrListOfPopUpName.object(at: (indexPath as NSIndexPath).row) as? String
        cell.selectionStyle = .none
        
        return cell
    }
}



