# FitSheet

A lightweight SwiftUI utility that automatically sizes .sheet based on its content.

<img src="https://github.com/vagamagajaga/FitSheet/blob/main/Sources/FitSheet/Screenshot.png" width="400"/>

## ⚙️ Requirements:

	•	iOS 16+ 

## 📦 Installation

#### By Swift Package Manager

    1. Xcode -> File -> Add Package Dependencies…**  
    2. Enter the repository URL:  
```
https://github.com/vagamagajaga/FitSheet
```
    3. In the files where you use the modifier, add:  
```swift
import FitSheet
```

## 🚀 Usage

Use the .fitSheet view modifier to size .sheet based on its content. 
For example:

```
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
