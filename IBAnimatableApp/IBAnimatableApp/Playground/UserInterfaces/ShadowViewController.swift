//
//  ShadowViewController.swift
//  IBAnimatableApp
//
//  Created by Anas Ait Ali on 02/02/2019.
//  Copyright © 2019 IBAnimatable. All rights reserved.
//

import UIKit
import IBAnimatable

class ShadowViewController: UIViewController {

  @IBOutlet fileprivate weak var viewToShadow: AnimatableView!

  private var testView: AnimatableView!

  override func viewDidLoad() {
    super.viewDidLoad()

    testView = AnimatableView(frame: CGRect(x: 100, y: 150, width: 100, height: 100))
    testView.backgroundColor = .green
    testView.cornerRadius = 16
    testView.cornerSides = [.bottomLeft, .bottomRight]
    testView.shadowColor = .black
    testView.shadowOpacity = 0.26
    testView.shadowRadius = 16
    testView.shadowOffset = CGPoint(x: 0, y: 23)

    view.addSubview(testView)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
      self.testView.isHidden = true
      self.viewToShadow.isHidden = true
    }
  }
}
