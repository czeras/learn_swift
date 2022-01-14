//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by YongQin on 2022/1/14.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    let speechSynthesizer = NSSpeechSynthesizer()
    
    
    @IBAction func speakbuttonClicked(_ sender: NSButton){
    
        let contents = textView.string
        if textView.string == nil {
            speechSynthesizer.startSpeaking(contents)
        }
        else {
            speechSynthesizer.startSpeaking("The document is empty.")
        }
        
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton){
        print("stop btuuon was clicked")
    }
    
    
    
    


}

