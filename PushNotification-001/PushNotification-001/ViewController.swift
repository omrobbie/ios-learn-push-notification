//
//  ViewController.swift
//  PushNotification-001
//
//  Created by omrobbie on 26/08/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupNotification() {
        let center = UNUserNotificationCenter.current()
        let options: UNAuthorizationOptions = [.alert, .badge, .sound]

        center.requestAuthorization(options: options) { (_, _) in }

        let content = UNMutableNotificationContent()
        content.title = "Title"
        content.body = "Body"
        content.sound = .default

        let date = Date().addingTimeInterval(5)
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
    }
}
