//
//  ContactMgmt.swift
//  ContactMgmt
//
//  Created by Danny on 2/23/24.
//

import Foundation

struct ContactMgmt {
    private var contactList:Array<String> = []
    
    //연락처 추가
    mutating func addContact(info: String) {
        contactList.append(info)
    }
    
    //연락처 목록보기
    func showContactList() {
        for contact in contactList {
            print(contact)
        }
    }
    
    //연락처 검색
}
