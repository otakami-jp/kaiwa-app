//
//  GreetingView.swift
//  kaiwa
//
//  Created by Rayane guemmoud on 24/05/2022.
//

import SwiftUI
import CoreData

struct Greeting: View {
    @Environment(\.managedObjectContext) private var viewContext

//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>

    var body: some View {
        //NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
        VStack() {
            VStack(alignment: .center, spacing: 50) {
                Text("Welcome to\nKaiwa")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(height: .infinity, alignment: .top)
                    .frame(width: .infinity, alignment: .center)
                    .foregroundColor(Color("Dark color"))
                    .font(.system(size: 40, weight: .bold))
                    .padding()
                
                Text("Let’s talk with your friends while protect your privacy")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, alignment: .center)
                    .foregroundColor(Color("Dark color"))
                    .font(.system(size: 22, weight: .bold))
            }
            VStack(alignment: .center) {
                Button(action: signIn) {
                    Text("Register")
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .padding(.horizontal, 120)
                        .padding(.vertical, 2)

                }
                .background(Color("Blue color"))
                .cornerRadius(21)
                .padding(.vertical, 2.5)
                
                Button(action: logIn) {
                    Text("Login")
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(Color("Dark color"))
                        .padding(.horizontal, 130)
                        .padding(.vertical, 2)
                        .overlay(
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("Blue color"), lineWidth: 2)
                        )

                }
                .background(.white)
                .padding(.vertical, 2.5)
                
                HStack(alignment: .center, spacing: 0.0) {
                    Text("If you continue, you accept")
                        .font(.caption)
                    Link("Terms Of Service ", destination: URL(string: "https://google.fr")!)
                        .font(.caption)
                    Text(" and ")
                        .font(.caption)
                    Link("Privacy", destination: URL(string: "https://google.fr")!)
                        .font(.caption)
                }
        
            }
                .frame(maxHeight: .infinity,
                       alignment: Alignment.bottomLeading)
            Spacer()
        }
        //}
    }
    
    private func signIn() {}

    private func logIn() {}

//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
}
//
//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

struct Greeting_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Greeting()
        }
    }
}
