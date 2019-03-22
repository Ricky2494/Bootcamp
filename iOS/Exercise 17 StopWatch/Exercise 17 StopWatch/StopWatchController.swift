//
//  StopWatchController.swift
//  Exercise 17 StopWatch
//
//  Created by Anindya Guha on 19/03/19.
//  Copyright © 2019 Anindya Guha. All rights reserved.
//

import UIKit

class StopWatchController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableViewForRecords: UITableView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var stopWatchLabel: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableViewForRecords.isHidden = true
        tableViewForRecords.dataSource = self
        let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
        tableViewForRecords.register(nib, forCellReuseIdentifier: "tableCell")
        tableViewForRecords.reloadData()
        // Do any additional setup after loading the view.
    }
    
    var seconds = 0
    var minutes = 0
    var hours = 0
    var value:Int = 1
    var timer = Timer()
    var isTimeRunning = false
    var lap = [Any]()
    var pause = true
    let playButtonPic = UIImage(named: "play_button")
    let pauseButtonPic = UIImage(named: "pause_button")
    
    @IBAction func onClick(){
        if pause {
            pause = false
            playButton.setImage(pauseButtonPic, for: .normal)
            runTimer()
            isTimeRunning = true
            //tableViewForRecords.isHidden = false
            
        }
        else {
            pause = true
            playButton.setImage(playButtonPic, for: .normal)
            timer.invalidate()
            isTimeRunning = false
            //tableViewForRecords.isHidden = false

        }
       // tableViewForRecords.isHidden = true
//        isTimeRunning = true
//        playButton.isEnabled = false

    }
    
    
    func runTimer() {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(StopWatchController.updateTimer)), userInfo: nil, repeats: true)
    }
    @IBAction func updateTimer() {
        if hours < 1 {
        if seconds < 9 {
            seconds += 1
            if minutes < 10{
                stopWatchLabel.text = "0\(hours):0\(minutes):0\(seconds)"
            }
            else{
                stopWatchLabel.text = "0\(hours):\(minutes):0\(seconds)"
            }
            if seconds == 59{
                seconds = 0
                minutes += 1
            }
            if minutes == 59{
                seconds += 1
                hours += 1
                minutes = 0
            }
            
        }
        else{
            seconds += 1
            if minutes < 10{
                stopWatchLabel.text = "0\(hours):0\(minutes):\(seconds)"
            }
            else{
                stopWatchLabel.text = "0\(hours):\(minutes):\(seconds)"
            }
            if  seconds == 59{
                seconds = 0
                minutes += 1
            }
            if minutes == 59{
                seconds += 1
                minutes = 0
            }
        }
    }
        else {
            stopWatchLabel.text = "\(hours):\(minutes):\(seconds)"
        }
        
    }
    @IBAction func onReset(){
        isTimeRunning = false
        seconds = 0
        minutes = 0
        hours = 0
        value = 0
        lap = []
        stopWatchLabel.text = "0\(hours):0\(minutes):0\(seconds)"
        tableViewForRecords.reloadData()
        tableViewForRecords.isHidden = true
        playButton.isEnabled = true
        playButton.setImage(playButtonPic, for: .normal)
        timer.invalidate()
        
    }
    
    @IBAction func onRecord(){
        
        if isTimeRunning {
            tableViewForRecords.isHidden = false
            var time:[Any] = [stopWatchLabel!.text!]
            value = value + 1
            lap.insert(time, at: 0)
            tableViewForRecords.reloadData()
            
        }
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  lap.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //lap.reverse()
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableViewCell!
        cell?.valueOfLabel(value: lap[indexPath.row])
        
        
        return cell!
    }

//    let delay  = DispatchTime.now() + .seconds(60)
//    DispatchQueue.main.asyncAfter( deadline: delay) {
//    stopWatchLabel.text = (String)delay
//
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


