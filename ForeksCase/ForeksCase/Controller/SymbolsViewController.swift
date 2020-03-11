//
//  ViewController.swift
//  ForeksCase
//
//  Created by yasin on 11.03.2020.
//  Copyright © 2020 yt. All rights reserved.
//

import UIKit

class SymbolsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let provider = DataProvider()
        provider.fetchSymbolDetails(symbolIDs: ["GARAN.E.BIST", "XU100.I.BIST"], detailIDs: ["pdd", "las"]) { [unowned self] (result) in
            print(result)
        }
    }


}

