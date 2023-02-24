//
//  AccountScreenViewControllerRouter.swift
//  ControlGastos
//
//  Created Cesar Cabrera Jacobo on 14/12/22.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class AccountScreenViewControllerRouter: AccountScreenViewControllerWireframeProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = AccountScreenViewControllerViewController(nibName: nil, bundle: nil)
        let interactor = AccountScreenViewControllerInteractor()
        let router = AccountScreenViewControllerRouter()
        let presenter = AccountScreenViewControllerPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
