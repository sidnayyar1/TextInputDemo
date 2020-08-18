//
//  InterfaceController.swift
//  TextInputDemo WatchKit Extension
//
//  Created by Sidharth Nayyar on 8/18/20.
//  Copyright © 2020 Sidharth Nayyar. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBOutlet weak var responseLabel: WKInterfaceLabel!
    
    @IBAction func replyButton() {
        let suggestedResponses = ["In class", "Doing Assignment", "At movies", "Sleeping"]
                presentTextInputController(withSuggestions: suggestedResponses, allowedInputMode: .plain) {

            (results) in
                    
                   
           if (results != nil && results!.count > 0) {
              // 2. write your code to process the person's response
          let userResponse = results?.first as? String
        
            self.responseLabel.setText(userResponse)
            print("button pressed")
                    }
        }

        
    }
}
