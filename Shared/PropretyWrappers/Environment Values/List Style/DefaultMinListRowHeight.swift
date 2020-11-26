//
//  DefaultMinListRowHeight.swift
//  SwiftUI 2.0
//
//  Created by Lucas Abijmil on 25/07/2020.
//

import SwiftUI

/// defaultMinListRowHeight indique la height minimum d'une row d'une List
/// Disponible sur : i•Pad•OS / watchOS / tvOS / macOS / Mac Catalyst
///
/// defaultMinListRowHeight: CGFloat { get set }
///
/// Permet notamment de réduire l'espace entre chaque row
///

// MARK: - Importance pour l'accessibilité : très faible - faible
// MARK: - Utilisation : Indique la height minimal d'une row d'une List

struct DefaultMinListRowHeight: View {

  @Environment(\.defaultMinListRowHeight) var rowHeight

  var body: some View {
    List(0 ..< 50) { item in
      Text("Row height is \(rowHeight)")
        .font(.title2)
        .fontWeight(.bold)
        .foregroundColor(.black)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red.opacity(0.75))
    }
  }
}

struct DefaultMinListRowHeight_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      DefaultMinListRowHeight()
        .environment(\.defaultMinListRowHeight, 150)
      DefaultMinListRowHeight()
        .environment(\.defaultMinListRowHeight, 1)
      DefaultMinListRowHeight()
    }
  }
}