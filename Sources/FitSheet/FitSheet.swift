//
//  FitSheetModifier.swift
//  FitSheet
//
//  Created by Ваган Галстян on 10.12.2025.
//

import SwiftUI

public extension View {
    func fitSheet() -> some View {
        self.modifier(FitSheetModifier())
    }
}

private struct FitSheetModifier: ViewModifier {
    
    @State private var contentHeight: CGFloat?
    
    func body(content: Content) -> some View {
        content
            .onGeometryChange(for: CGFloat.self) { proxy in
                proxy.size.height
            } action: { newHeight in
                contentHeight = newHeight
            }
            .presentationDetents(
                contentHeight.map { [.height($0)] } ?? [.medium]
            )
    }
}
