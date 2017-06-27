//
//  ViewController.swift
//  Calculator
//
//  Created by Lord Lopie on 6/9/17.
//  Copyright © 2017 DivLabs. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var outPutLabel: UILabel!
    
    enum Operation: String {
        case Divide = "/"
        case Times = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    
    var currentOperation = Operation.Empty
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var result = ""
    
    
    var toiletSound = AVAudioPlayer()
    var fart0Sound = AVAudioPlayer()
    var fart1Sound = AVAudioPlayer()
    var fart2Sound = AVAudioPlayer()
    var fart3Sound = AVAudioPlayer()
    var fart4Sound = AVAudioPlayer()
    var fart5Sound = AVAudioPlayer()
    var fart6Sound = AVAudioPlayer()
    var fart7Sound = AVAudioPlayer()
    var fart8Sound = AVAudioPlayer()
    var fart9Sound = AVAudioPlayer()
    var fartAddSound = AVAudioPlayer()
    var fartSubtractSound = AVAudioPlayer()
    var fartDivideSound = AVAudioPlayer()
    var fartTimesSound = AVAudioPlayer()
    var paper1Sound = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        
        let toilet = Bundle.main.path(forResource: "toilet", ofType: "wav")
        let fart0 = Bundle.main.path(forResource: "fart0", ofType: "wav")
        let fart1 = Bundle.main.path(forResource: "fart1", ofType: "wav")
        let fart2 = Bundle.main.path(forResource: "fart2", ofType: "wav")
        let fart3 = Bundle.main.path(forResource: "fart3", ofType: "wav")
        let fart4 = Bundle.main.path(forResource: "fart4", ofType: "wav")
        let fart5 = Bundle.main.path(forResource: "fart5", ofType: "wav")
        let fart6 = Bundle.main.path(forResource: "fart6", ofType: "wav")
        let fart7 = Bundle.main.path(forResource: "fart7", ofType: "wav")
        let fart8 = Bundle.main.path(forResource: "fart8", ofType: "wav")
        let fart9 = Bundle.main.path(forResource: "fart9", ofType: "wav")
        let fartAdd = Bundle.main.path(forResource: "fartAdd", ofType: "wav")
        let fartSubtract = Bundle.main.path(forResource: "fartSubtract", ofType: "wav")
        let fartDivide = Bundle.main.path(forResource: "fartDivide", ofType: "wav")
        let fartTimes = Bundle.main.path(forResource: "fartTimes", ofType: "wav")
        let paper1 = Bundle.main.path(forResource: "paper1", ofType: "wav")
        
        
        do {
            paper1Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: paper1!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }

        
        do {
            toiletSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: toilet!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart0Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart0!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart1Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart1!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart2Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart2!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart3Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart3!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart4Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart4!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart5Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart5!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart6Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart6!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart7Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart7!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart8Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart8!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fart9Sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart9!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fartAddSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fartAdd!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fartSubtractSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fartSubtract!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fartDivideSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fartDivide!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        do {
            fartTimesSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fartTimes!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
        }
        catch{
            print(error)
        }
        
        outPutLabel.text = "0"
        
    }
    
    
    @IBAction func addPressed(sender: UIButton){
        
        processOperation(operation: .Add)
        playfartAddSound()
        
        
    }
    @IBAction func subtractPressed(sender: UIButton){
        
        processOperation(operation: .Subtract)
        playfartSubtractSound()
        

    }
    @IBAction func dividePressed(sender: UIButton){
        
        processOperation(operation: .Divide)
        playfartDivideSound()
        

        
    }
    @IBAction func timesPressed(sender: UIButton){
        
        processOperation(operation: .Times)
        playfartTimesSound()
        

        
    }
    
    @IBAction func equalPressed(sender: UIButton){
        
        processOperation(operation: currentOperation)
        playToiletSound()
        

        
    }
    @IBAction func clearPressed(sender: UIButton){
        
        result = ""
        runningNumber = ""
        currentOperation = Operation.Empty
        outPutLabel.text = runningNumber
        playpaperOneSound()
        
        
    }
    
    @IBAction func zeroPressed(sender: UIButton){
        
        playfart0Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func onePressed(sender: UIButton){
        
        playfart1Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func twoPressed(sender: UIButton){
        
        playfart2Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func threePressed(sender: UIButton){
        
        playfart3Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func fourPressed(sender: UIButton){
        
        playfart4Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func fivePressed(sender: UIButton){
        
        playfart5Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func sixPressed(sender: UIButton){
        
        playfart6Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func sevenPressed(sender: UIButton){
        
        playfart7Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func eightPressed(sender: UIButton){
        
        playfart8Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
    @IBAction func ninePressed(sender: UIButton){
        
        playfart9Sound()
        
        runningNumber += "\(sender.tag)"
        outPutLabel.text =  runningNumber
        
    }
 
    
    func playToiletSound(){
        if (toiletSound.isPlaying){
            toiletSound.stop()
        }
        
        toiletSound.play()
        
        
    }
    
    func playfart0Sound(){
        if (fart0Sound.isPlaying){
            fart0Sound.stop()
        }
        
        fart0Sound.play()
        
        
    }
    func playfart1Sound(){
        if (fart1Sound.isPlaying){
            fart1Sound.stop()
        }
        
        fart1Sound.play()
        
    
        
    }
    func playfart2Sound(){
        if (fart2Sound.isPlaying){
            fart2Sound.stop()
        }
        
        fart2Sound.play()
        
      
        
    }
    func playfart3Sound(){
        if (fart3Sound.isPlaying){
            fart3Sound.stop()
        }
        
        fart3Sound.play()
        
       
        
    }
    func playfart4Sound(){
        if (fart4Sound.isPlaying){
            fart4Sound.stop()
        }
        
        fart4Sound.play()
        
    }
    func playfart5Sound(){
        if (fart5Sound.isPlaying){
            fart5Sound.stop()
        }
        
        fart5Sound.play()
        
    }
    func playfart6Sound(){
        if (fart6Sound.isPlaying){
            fart6Sound.stop()
        }
        
        fart6Sound.play()
        
    }
    func playfart7Sound(){
        if (fart7Sound.isPlaying){
            fart7Sound.stop()
        }
        
        fart7Sound.play()
        
    }
    func playfart8Sound(){
        if (fart8Sound.isPlaying){
            fart8Sound.stop()
        }
        
        fart8Sound.play()
        
    }
    func playfart9Sound(){
        if (fart9Sound.isPlaying){
            fart9Sound.stop()
        }
        
        fart9Sound.play()
        
    }
    func playfartAddSound(){
        if (fartAddSound.isPlaying){
            fartAddSound.stop()
        }
        
        fartAddSound.play()
        
    }
    func playfartSubtractSound(){
        if (fartSubtractSound.isPlaying){
            fartSubtractSound.stop()
        }
        
        fartSubtractSound.play()
        
    }
    func playfartDivideSound(){
        if (fartDivideSound.isPlaying){
            fartDivideSound.stop()
        }
        
        fartDivideSound.play()
        
    }
    func playfartTimesSound(){
        if (fartTimesSound.isPlaying){
            fartTimesSound.stop()
        }
        
        fartTimesSound.play()
        
    }
    func playpaperOneSound(){
        if (paper1Sound.isPlaying){
            paper1Sound.stop()
        }
        
        paper1Sound.play()
        
    }
    
    func processOperation(operation:Operation){
        
        if currentOperation != Operation.Empty{
            
            if runningNumber != "" {
                rightValStr = runningNumber
                runningNumber = ""
                
                if  currentOperation == Operation.Times{
                    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                    
                }else if currentOperation == Operation.Divide{
                    result = "\(Double(leftValStr)! / Double(rightValStr)!)"

                }else if currentOperation == Operation.Subtract{
                    result = "\(Double(leftValStr)! - Double(rightValStr)!)"

                }else if currentOperation == Operation.Add{
                    result = "\(Double(leftValStr)! + Double(rightValStr)!)"

                }
                
                leftValStr = result
                outPutLabel.text = result
                
            }
            
            currentOperation = operation
        }else{
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation
        }
        
    }

   
    
    
    
}

