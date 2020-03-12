//
//  ViewController.swift
//  ForeksCase
//
//  Created by yasin on 11.03.2020.
//  Copyright © 2020 yt. All rights reserved.
//

import UIKit

class SymbolsViewController: UIViewController {
    
    var viewModel: SymbolsViewModelProtocol!
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.viewModel = SymbolsViewModel()
        self.updateData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.startTimer()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.stopTimer()
    }
    
    func updateData() {
        self.viewModel.updateData(leftKey: nil, rightKey: nil) { [unowned self] in
            print("Reload Time")
        }
    }
    
    func startTimer() {
        self.timer?.invalidate()
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [unowned self] (timer) in
            self.updateData()
        })
    }
    
    func stopTimer() {
        self.timer?.invalidate()
        self.timer = nil
    }
    
    func restartTimer() {
        self.stopTimer()
        self.startTimer()
    }
}

