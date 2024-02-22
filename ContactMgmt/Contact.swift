//
//  Contact.swift
//  ContactMgmt
//
//  Created by Danny on 2/23/24.
//

import Foundation

struct Contact {
    private var contactMgmt = ContactMgmt()
    
    mutating func startProgram() {
        print("연락처 정보를 입력해주세요 : ", terminator: "")
        guard let contactInfo = readLine() else {
            return
        }
        contactMgmt.addContact(info: contactInfo)
        contactMgmt.showContactList()
    }
    
}
