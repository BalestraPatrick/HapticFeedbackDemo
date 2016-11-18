//
//  ViewController.swift
//  HapticFeedbackDemo
//
//  Created by Patrick Balestra on 11/18/16.
//  Copyright © 2016 Patrick Balestra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var feedbackGenerator: UINotificationFeedbackGenerator?    // Declare the generator type.

    override func viewDidLoad() {
        super.viewDidLoad()
        feedbackGenerator = UINotificationFeedbackGenerator()  // Instantiate the generator.
    }

    @IBAction func triggerNotification(_ sender: UIButton) {
        // We don't need the prepare method and to nil the generator in this case. For more information, read the full tutorial: http://code.tutsplus.com/tutorials/haptic-feedback-in-ios-10
        // feedbackGenerator?.prepare()                           // Get the Taptic Engine into a ready state.
        feedbackGenerator?.notificationOccurred(.success)      // Trigger the haptic feedback.
        // feedbackGenerator = nil                                // Release the current generator.
    }
}

