//
//  AddPageView.swift
//  RealmDB
//
//  Created by nadezda.gura 
//

import SwiftUI

struct AddPageView: View {
    @EnvironmentObject var modelData: RealmDataViewModel
    @Environment(\.presentationMode) var present
    
    var body: some View {
        NavigationView{
        List{
            Section(header: Text("Title")) {
            TextField("",text: $modelData.title)
        }
                Section(header: Text("Detail")) {
                TextField("", text: $modelData.detail)
            }
            }.listStyle(GroupedListStyle())
            
            .navigationTitle(modelData.updateObject == nil ? "ADD NOTE" : "UPDATE NOTE")
        
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    modelData.addData(presentation: present)
                }, label: {
                    Text("DONE")
                })
            }
                
                ToolbarItem(placement: .navigationBarLeading){
                    Button(action:{
                        present.wrappedValue.dismiss()
                    }, label:{
                        Text("CANCEL")
                    })
        }
        }
    }//toolbar
        .onAppear(){
            modelData.setupInitialData()
        }
        .onDisappear(){
            modelData.deInitData()
        }
    }
}

struct AddPageView_Previews: PreviewProvider {
    static var previews: some View {
        AddPageView()
    }
}
