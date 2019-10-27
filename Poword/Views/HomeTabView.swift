//
//  HomeTabView.swift
//  Poword
//
//  Created by kingcos on 2019/10/27.
//  Copyright © 2019 kingcos. All rights reserved.
//

import SwiftUI

struct HomeTabView: View {
    @State var word = ""
    
    var body: some View {
        NavigationView {
            List {
                HStack {
                    TextField(
                        "Just Input a Word...",
                        text: $word,
                        onEditingChanged: textFieldOnEditingChanged(_:),
                        onCommit: textFieldOnCommit
                    )
                    Button(action: {
                    }, label: { Image(systemName: "xmark.circle") })
                }
            }
            .navigationBarTitle(Text("Poword"))
        }
    }
}

extension HomeTabView {
    func textFieldOnEditingChanged(_ changed: Bool) {
        print(changed)
    }
    
    func textFieldOnCommit() {
        print($word)
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
