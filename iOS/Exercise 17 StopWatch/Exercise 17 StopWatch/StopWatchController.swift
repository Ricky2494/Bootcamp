//
//  StopWatchController.swift
//  Exercise 17 StopWatch
//
//  Created by Anindya Guha on 19/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class StopWatchController: UIViewController {

    @IBOutlet weak var tableViewForRecords: UITableView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var stopWatchLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    let delay  = DispatchTime.now() + .seconds(60)
    DispatchQueue.main.asyncAfter( deadline: delay) {
    stopWatchLabel.text = (String)delay
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
