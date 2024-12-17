//
//  Info.swift
//  practise
//
//  Created by ATEU on 16/12/24.
//

import  SwiftUI
struct Info : View {
    let text : String
    let imageName : String
    var body: some View {
        HStack{
            Text(text)
            Image(systemName: imageName)
        }
    }
}
#Preview {
    Info(text: "hello", imageName:  "phone.fill")
        .previewLayout(.sizeThatFits)
}
