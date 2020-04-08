//
//  TabsStructure.swift
//  Vens
//
//  Created by Aina Cuxart on 08/04/2020.
//  Copyright © 2020 Covid. All rights reserved.
//

import Foundation
import UIKit

class TabsStructure: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        self.selectedIndex = getSelectedIndex()
    }
    
    func setUpUI(){
//        let itemAppearance = UITabBarItem.appearance()
//        itemAppearance.setTitleTextAttributes([NSAttributedString.Key.font : UIFont.ccBaseFontPNSemiboldOfSize(fontSize: .textTabBar)], for: .normal)
//        itemAppearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.ccWhite], for: .selected)
//
//        let tabBarAppearance = UITabBar.appearance()
//        tabBarAppearance.tintColor = UIColor.ccSecondaryColor
//        tabBarAppearance.barTintColor = UIColor.ccPrimaryColor
//        tabBarAppearance.unselectedItemTintColor = UIColor.ccWhite
        
        guard tabBar.items != nil, tabBar.items!.count >= 3 else { return }
        
        tabBar.items?[0].title = String(localizedStringWithKey: "tabFirstKey")
        tabBar.items?[0].image = UIImage.init(named: "alertIcon")
        tabBar.items?[1].title = String(localizedStringWithKey: "tabSecondKey")
        tabBar.items?[1].image = UIImage.init(named: "inspectionsIcon")
        tabBar.items?[2].title = String(localizedStringWithKey: "tabThirdKey")
        tabBar.items?[2].image = UIImage.init(named: "mapIcon")
        
    }
    
    
    func getSelectedIndex() -> Int {
        
        //if hasFavourites return 0
        return 1
    }
}
