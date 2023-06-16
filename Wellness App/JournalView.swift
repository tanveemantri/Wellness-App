//
//  JournalView.swift
//  Wellness App
//
//  Created by nitya kaki  on 6/14/23.
//

import SwiftUI

struct JournalEntry: Identifiable {
    let id = UUID()
    var entryText: String
    var lastEdited: Date
}

struct JournalView: View {
    @State private var journalEntries: [JournalEntry] = []
    @State private var newEntry: String = ""
    
    var body: some View {
        ZStack {
            (Color("Coral"))
                .ignoresSafeArea()
            VStack {
                Text("Your Journal")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 20.0)
                
         
                
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(journalEntries) { entry in
                            JournalEntryView(entry: entry, journalEntries: $journalEntries)
                        }
                    }
                    .padding()
                }
            }
            
            HStack {
                TextField("Write a journal entry...", text: $newEntry)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: saveEntry) {
                    Text("Save")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("Turquoise"))
                        .cornerRadius(10)
                    
                }
            }
            .padding(.top, 650.0)
        }
     
    }
    
    private func saveEntry() {
        if !newEntry.isEmpty {
            let entry = JournalEntry(entryText: newEntry, lastEdited: Date())
            journalEntries.append(entry)
            newEntry = ""
        }
    }
}

struct JournalEntryView: View {
    @State private var isEditing: Bool = false
    @State private var editedText: String = ""
    
    var entry: JournalEntry
    @Binding var journalEntries: [JournalEntry]
    
    var body: some View {
        VStack {
            Text(entry.entryText)
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(.black)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Turquoise"), lineWidth: 2)
                )
                .contextMenu {
                    Button(action: {
                        editEntry(entry)
                    }) {
                        Label("Edit", systemImage: "pencil")
                    }
                    Button(action: {
                        deleteEntry(entry)
                    }) {
                        Label("Delete", systemImage: "trash")
                    }
                }
            
            if isEditing {
                TextField("Edit your entry...", text: $editedText, onCommit: saveEditedEntry)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            }
            
            Text("Last edited: \(entry.lastEdited, formatter: dateFormatter)")
                .font(.caption)
                .foregroundColor(.white)
        }
        .onTapGesture {
            isEditing = false
        }
    }
    
    private func editEntry(_ entry: JournalEntry) {
        editedText = entry.entryText
        isEditing = true
    }
    
    private func saveEditedEntry() {
        if !editedText.isEmpty {
            if let index = journalEntries.firstIndex(where: { $0.id == entry.id }) {
                journalEntries[index].entryText = editedText
                journalEntries[index].lastEdited = Date()
            }
            isEditing = false
        }
    }
    
    private func deleteEntry(_ entry: JournalEntry) {
        if let index = journalEntries.firstIndex(where: { $0.id == entry.id }) {
            journalEntries.remove(at: index)
        }
    }
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
