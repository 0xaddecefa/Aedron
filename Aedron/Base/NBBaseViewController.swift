//
//  NBBaseViewController.swift
//  Aedron
//
//  Created by Tamas Nemeth on 08/03/16.
//  Copyright © 2016 XY. All rights reserved.
//

import UIKit

class NBBaseViewController: UIViewController, NBPresenterDelegate {

    var presenter : NBPresenterProtocol

    class func presenterClass() -> NBBasePresenter.Type {
        // subclass should implement
        assert(false)
        return NBBasePresenter.self
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        self.presenter = self.dynamicType.presenterClass().init()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.presenter.delegate = self

        self.presenter.load()
    }

    func stateUpdated(state: PresenterState) {
        // here goes the vc state updates (show loading indicator, refresh UI based on the updated model, show errors)
    }



    

}
