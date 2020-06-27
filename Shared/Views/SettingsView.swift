//
//  SettingsView.swift
//  SwiftUI 2.0
//
//  Created by Lucas Abijmil on 27/06/2020.
//

import SwiftUI

/// Apparition des Settings : correspond aux préférences (cmd + ,) sur Mac
/// Disponible sur : macOS / Mac Catalyst
/// 
/// Cette View contient principalement des Button / Slider / ColorPicker etc... bref qui des components qui vont changer le UI de l'application

struct SettingsView: App {
  @SceneBuilder var body: some Scene {
    WindowGroup {
      LabelView()
    }
    /// Check de l'OS (car uniquement disponible sur macOS)
    #if os(macOS)
    Settings {
      Text("Add your setting UI here")
        .padding()
    }
    #endif
  }
}