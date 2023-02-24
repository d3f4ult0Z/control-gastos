//
//  TabBarViewController.swift
//  ControlGastos
//
//  Created by Cesar Cabrera Jacobo on 14/12/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func setup(){
        let firstView = MovementScreenViewControllerRouter.createModule()
        let secondView = AccountScreenViewControllerRouter.createModule()
        let thirtView = UserScreenViewControllerRouter.createModule()
        let fourthView = OptionsScreenViewControllerRouter.createModule()
        
        firstView.title = "Movimientos"
        secondView.title = "Cuentas"
        thirtView.title = "Usuario"
        fourthView.title = "Opciones"
        
        self.setViewControllers([firstView,secondView,thirtView,fourthView], animated: true)
        
        guard let items = self.tabBar.items else {return}
        
        items[0].image = UIImage(named: "movementIcon")
        items[1].image = UIImage(named: "accountIcon")
        items[2].image = UIImage(named: "userIcon")
        items[3].image = UIImage(named: "optionsIcon")
        
        
        self.tabBar.backgroundColor = .clear
        self.tabBar.tintColor = .blue
    }

}

