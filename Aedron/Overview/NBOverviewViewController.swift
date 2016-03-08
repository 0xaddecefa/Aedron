//
//  NBOverviewViewController.swift
//  Aedron
//
//  Created by Tamas Nemeth on 08/03/16.
//  Copyright © 2016 XY. All rights reserved.
//

import UIKit

class NBOverviewViewController: NBBaseViewController {

    override class func presenterClass() -> NBBasePresenter.Type {
        return NBOverviewPresenter.self
    }


    override func viewDidLoad() {
        super.viewDidLoad()
    }


}
