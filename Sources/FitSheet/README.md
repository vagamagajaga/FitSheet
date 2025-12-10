FitSheet

A lightweight SwiftUI utility that automatically sizes .sheet based on its content — even on iOS 15+, where .presentationDetents is not available.

✨ Features
    •    Automatically adjusts sheet height to fit its inner content
    •    Works on iOS 16+
    •    Simple API (single ViewModifier)
    •    Smooth height transitions with animation

📦 Installation (Swift Package Manager)

In Xcode:

File → Add Packages → Paste repo URL

File → Add Packages → Paste repo URL

dependencies: [
    .package(url: "https://github.com/YOUR_USERNAME/FitSheet.git", from: "1.0.0")
]

Then add the library to your target:

.product(name: "FitSheet", package: "FitSheet")

🚀 Usage

import SwiftUI
import FitSheet

struct DemoView: View {
    @State private var show = false

    var body: some View {
        Button("Show Sheet") {
            show = true
        }
        .sheet(isPresented: $show) {
            VStack {
                Text(
                    """
                    A blind wizard walks into a pub. He says to the barkeep, "Want to hear a Hufflepuff joke?"
                            
                    The pub goes completely silent. The barkeep says, Sir, I am a Hufflepuff. I'm used to handling a rough crowd alone. I have my wand drawn. The wizard to your left is an auror with his wand drawn. He too is a Hufflepuff. The witch on your right has her wand drawn. She is a dueling champion and also a Hufflepuff. Are you absolutely certain you want to tell that Hufflepuff joke?"
                                                                
                    The blind wizard says, "Gods no! Not if I'm going to have to explain it three times!
                    """
                )
                .padding()
                .background(.gray)
                .cornerRadius(12)
                .padding()
                .foregroundStyle(.white)
                .font(.headline)
            }
            .fitSheet()   // 🔥 Key line
        }
    }
}
