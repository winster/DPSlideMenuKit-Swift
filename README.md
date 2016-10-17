# DPSlideMenuKit-Custom-Swift
Fork of DPSlideMenu-Kit-Swift (refer parent for its license).
One disclaimer - this is no more a pod. You have to copy the resources.

This is what I made
![screenshot](https://github.com/winster/DPSlideMenuKit-Swift/blob/master/new_slidemenu.gif?raw=true)

##
And this is how DPSlideMenu works

![screenshot](https://github.com/HongliYu/DPSlideMenuKit-Swift/blob/master/DPSlideMenuKit.gif?raw=true)

# What is the need for this fork?
DPSlideMenu uses a table view for the drawer, which is good and crisp. But I wanted to have a custom layout there. Also wanted to design it using storyboard. DPSlideMenu does not support that. So I made DPSlideMenuKit-Custom-Swift

# Usage

1. In your xcode project choose add files and select DPSlideMenuKit folder
2. Create view controllers that you want to open when user taps on menu items (for example DPHomeViewController & DPSupportViewController in demo). Make sure you extend them with DPContentViewController instead of UIViewController
3. Your project should have a ViewController with a UIView which fully occupies the viewport to host the drawer menu (for example drawerView in ViewController in demo) 
4. Add an empty ViewController to your storyboard and select the custom class as DPDrawerViewController from menu
5. Add another ViewController to storyboard for menu. Make sure to create a view with full height 260 as width where 260 is a constant defined in DPDrawerViewController for menu depth. Feel free to modify this value
6. Refer 3 action methods defined at the bottom of DPLeftMenuViewController which has code to open your View controller when user tap on a menu item. Feel free to add your custom actions.
7. And finall in your root view controller (mentioned in step 3), add following code in viewDidLoad method

```  swift
        let drawer: DPDrawerViewController? = self.storyboard?.instantiateViewController(withIdentifier: "DPDrawerViewController") as? DPDrawerViewController
    self.addChildViewController(drawer!)
    self.view.addSubview(drawer!.view)

    let homeViewController: DPHomeViewController? = self.storyboard?.instantiateViewController(withIdentifier: "DPHomeViewController") as? DPHomeViewController
    
    let leftMenuViewController: DPLeftMenuViewController = self.storyboard?.instantiateViewController(withIdentifier: "leftmenu") as! DPLeftMenuViewController
    drawer?.reset(leftViewController: leftMenuViewController,
                  centerViewController: homeViewController)

```

where homeViewController is the default ViewController when user lands.