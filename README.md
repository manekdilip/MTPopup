# MTPopup

MTPopup is alert view written in Swift 3.0 and easy to use in project.

![BackgroundImage](https://github.com/manekdilip/MTPopup/blob/master/Images/iPhone5_7.png)
![BackgroundImage](https://github.com/manekdilip/MTPopup/blob/master/Images/iPhone5_2.png)
![BackgroundImage](https://github.com/manekdilip/MTPopup/blob/master/Images/iPhone5_4.png)
![BackgroundImage](https://github.com/manekdilip/MTPopup/blob/master/Images/iPhone5_6.png)
![BackgroundImage](https://github.com/manekdilip/MTPopup/blob/master/Images/iPhone5_8.png)
![BackgroundImage](https://github.com/manekdilip/MTPopup/blob/master/Images/iPhone5_9.png)


#Installation

### Manually

Clone or Download this Repo. Then simply drag the folder ```MTPopupClass``` to your Xcode project.


###Simply way to integrate ```MTPopup```

###Single button with title
```
MTPopUp(frame: self.view.frame).show(complete: { (index) in 
                print("INDEX : \(index)")
                //Set your custom code here as per index.
                }, 
                view: self.view, 
                animationType: MTAnimation.TopToMoveCenter, 
                strMessage: "You've just displayed this awesome Pop Up View", 
                btnArray: ["Done"], 
                strTitle: "Congratulations")
```

###Two buttons with title and different animation

```
MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                //Set your custom code here as per index.
                }, 
                 view: self.view, 
                 animationType: MTAnimation.ZoomIn_ZoomOut, 
                 strMessage: "Are you sure want to logout?", 
                 btnArray: ["Ok","Cancel"], 
                 strTitle: "Logout")
                
```

###Without title and button, simply swipe to dismiss
```
MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                //Set your custom code here as per index.
                }, 
                view: self.view, 
                animationType: MTAnimation.LeftToMoveCenter, 
                strMessage: "Developing an interactive and effective mobile application is not an easy task. Yet many people believe that the job of a mobile developer is not a tough one, while a few also believe the exact opposite.", 
                btnArray: [])
                
```

###With multiple buttons

```
MTPopUp(frame: self.view.frame).show(complete: { (index) in
                print("INDEX : \(index)")
                //Set your custom code here as per index.
                }, 
                view: self.view, 
                animationType: MTAnimation.BottomToMoveCenter, 
                strMessage: "Select any button.", 
                btnArray: ["One Button","Two Button","Three Button , Four Button , Five Button","Six Button","Seven Button","Eight Button","Nine Button","Ten Button , Elevan Button , Twelve Button , Threeten Button"], 
                strTitle: "Multiple Buttons")
                
```                

###MTPopup is using closure, so no need to create any object or reference. 
