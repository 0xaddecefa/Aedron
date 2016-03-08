//
//  NBBasePresenter.swift
//  Aedron
//
//  Created by Tamas Nemeth on 08/03/16.
//  Copyright © 2016 XY. All rights reserved.
//

import UIKit

enum PresenterState {
    case Initialized, Loading, Loaded, Error, Stopped
}

protocol NBPresenterDelegate : class {
    func stateUpdated(state: PresenterState) -> Void

}

protocol NBPresenterProtocol {

    weak var delegate : NBPresenterDelegate? { get set }

    func load() -> Void
    func stop() -> Void

}


class NBBasePresenter: NBPresenterProtocol {

    weak var delegate : NBPresenterDelegate?

    var state : PresenterState = .Initialized {
        didSet {
            self.delegate?.stateUpdated(self.state)
        }
    }

    required init() {
    }
    
    // loads the model
    func load() {
        self.state = .Loading
        //do the load here
    }

    // stops any progress happening regarding to this
    func stop() {
        self.state = .Stopped
    }

}
