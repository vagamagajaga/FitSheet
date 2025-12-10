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
    @State private var contentHeight: CGFloat = 0
    
    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { geo in
                    Color.clear
                        .preference(key: HeightPreferenceKey.self,
                                    value: geo.size.height)
                }
            )
            .onPreferenceChange(HeightPreferenceKey.self) { newHeight in
                contentHeight = newHeight
            }
            .presentationDetents([.height(contentHeight)])
    }
}

private struct HeightPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
