//
//  SettingsOptionViewModel.swift
//  MessengerTutorial
//
//  Created by Rudy Rolland on 04/02/2024.
//

import SwiftUI

enum SettingsOptionViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accessibility
    case privacy
    case notifications
    
    var title: String {
        switch self {
        case .darkMode: return "Mode Sombre"
        case .activeStatus: return "Status"
        case .accessibility: return "Accessibilité"
        case .privacy: return "Confidentialité"
        case .notifications: return "Notifications"
        }
    }
    var imageName: String {
        switch self {
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accessibility: return "person.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notifications: return "bell.circle.fill"
        }
    }
    var imageBackgroundColor: Color {
        switch self {
        case .darkMode: return .black
        case .activeStatus: return Color(.systemGreen)
        case .accessibility: return .black
        case .privacy: return Color(.systemBlue)
        case .notifications: return Color(.systemPurple)
        }
    }
    
    
    var id: Int { return self.rawValue }
}
