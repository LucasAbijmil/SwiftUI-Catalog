//
//  HelpModifier.swift
//  SwiftUI 2.0
//
//  Created by Lucas Abijmil on 24/06/2020.
//

import SwiftUI

/// Apparition du modifier help afin de facilité l'accesibilité de l'application
/// Disponible sur : i•Pad•OS / watcOS / tvOS / macOS / Mac Catalyst
///
///   • i•Pad•OS : voiceOver lira la String contenu dans le modifier
///   • tvOS ??
///   • macOS / Mac Catalyst: info bulle "classique"

// MARK: - Utilisation : si on souhaite rendre notre application plus accessible (ici pour les malvoyants)
#warning("Normalement dispo pour watchOS. Regarder les updates de la doc")
#warning("Lever les incertitudes")
#warning("cf accessibilityEnabled")

struct HelpModifier: View {
  var body: some View {
    Button(action: {}) {
      Label("Hello World !", systemImage: "person")
    }
    .help("Text saying Hello World with a person icon")
  }
}

struct HelpModifier_Previews: PreviewProvider {
  static var previews: some View {
    HelpModifier()
  }
}
