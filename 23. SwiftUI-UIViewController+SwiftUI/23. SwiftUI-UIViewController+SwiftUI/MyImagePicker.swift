//
//  MyImagePicker.swift
//  23. SwiftUI-UIViewController+SwiftUI
//
//  Created by 강현성 on 2021/09/18.
//  Copyright © 2021 Mirror. All rights reserved.
//

import SwiftUI

// does not conform to protocol 'UIViewControllerRepresentable'
/*
 자바를 했던 사람들이라면 익숙할 만한, implementation 에러
 
 어떤 interface 를 implement 했는데,
 해당 interface 의 함수를 구현하지 않아서 나는 에러.
 
 iOS 에서는 delegate

 내가 어떤 Delegate 를 사용하겠다고 특정 class 에 명시했으면,
 해당 delegate 에 속해있는 함수도 같이 정의해야함
 */
struct MyImagePicker: UIViewControllerRepresentable {
    
    @Binding var imagePickerVisible: Bool
    @Binding var selectedImage: Image?
    
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MyImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<MyImagePicker>) {
        
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        @Binding var imagePickerVisible: Bool
        @Binding var selectedImage: Image?
    
        init(imagePickerVisible: Binding<Bool>, selectedImage: Binding<Image?>) {
            _imagePickerVisible = imagePickerVisible
            _selectedImage = selectedImage
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            selectedImage = Image(uiImage: uiImage)
            imagePickerVisible = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            imagePickerVisible = false
        }
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
    }

}

/*
struct MyImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        MyImagePicker()
    }
}
*/
