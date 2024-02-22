//
//  main.swift
//  ContactMgmt
//
//  Created by Danny on 12/30/23.
//

// SRP(Single Responsibility Principle): 단일 책임 원칙
// OCP(Open Closed Principle): 개발 폐쇄 원칙
// LSP(Listov Substitution Principle): 리스코프 치환 원칙
// ISP(Interface Segregation Principle): 인터페이스 분리 원칙
// DIP(Dependency Inversion Principle): 의존 역전 원칙

import Foundation

var contact = Contact()
contact.startProgram()

//// 연락처 리스트 변수
//var contactList:Array<String> = []
//// 프로그램 "x"를 입력하면 program_life가 0으로 변경되면서 while문이 종료되기 때문에, 초기값은 1로 지정한다.
//var programLife = 1
//
//// 프로그램 "x" 종료를 누를 때 까지 무한반복해야하기 때문에 while문을 사용해야 한다.
//while programLife != 0 {
//    // 사용자의 값을 입력 받기
//    // terminator를 사용한 이유는?
//    print("1) 연락처 추가 2) 연락처 목록보기 3) 연락처 검색 x) 종료")
//    print("메뉴를 선택해주세요 : ", terminator: "")
//    let menu = readLine()
//
//    // 사용자가 나이 입력을 올바르게 입력했다면 flag 값은 1이고, 잘못 입력했다면 flag 값은 0이다.
//    var age_flag:Int = 1
//    // 사용자가 연락처 입력을 올바르게 입력했다면 flag 값은 1이고, 잘못 입력했다면 flag 값은 0이다.
//    var contact_flag:Int = 1
//
//    // 이름 변수
//    var name:String = ""
//    // 나이 변수
//    var age:String = ""
//    // 연락처 변수
//    var contact:String = ""
//    
//    // 연락처 추가
//    if menu == "1" {
//        print("연락처 정보를 입력해주세요 : ", terminator: "")
//        // readLine()은 무엇인가?, split(sparator: )은?
//        let input = readLine()!.split(separator: "/")
//
//        // 입력값이 아무것도 없을 때, 잘못된 입력입니다.
//        if input.count == 0 {
//            print("아무것도 입력되지 않았습니다. 입력 형식을 확인해주세요.")
//        } // 입력값이 들어갔을 때,
//        else if input.count != 0 {
//            // 이름 공백 제거하기, 이름 올바른지 확인 하기
//            for i in input[0] {
//                if i != " " {
//                    name.append(i)
//                }
//            }
//
//            // 나이 공백 제거하기
//            for i in input[1] {
//                if i != " " {
//                    age.append(i)
//                }
//            }
//
//            // 나이 입력값 올바른지 확인 하기
//            if Int(age) == nil {
//                age_flag = 0
//            } else if Int(age)! >= 1000 {
//                age_flag = 0
//            }
//
//            // 연락처 입력값 올바른지 확인 하기
//            var num = 0
//            for i in input[2] {
//                if i == "-" {
//                    num += 1
//                }
//                if i != " " {
//                    contact.append(i)
//                }
//            }
//
//            // 연락처 "-" 값이 2개가 아니라면 잘못된 입력입니다.
//            if num != 2 {
//                contact_flag = 0
//            }
//
//            // 출력값
//            if age_flag == 1 && contact_flag == 1 {
//                print("입력한 정보는 \(age)세 \(name)(\(contact))입니다.")
//                // 연락처 리스트에 저장하기
//                contactList.append("\(name) / \(age) / \(contact)")
//            } else if age_flag == 0 && contact_flag == 1 {
//                print("입력한 나이정보가 잘못되었습니다. 입력 형식을 확인해주세요.")
//            } else if contact_flag == 0 && age_flag == 1 {
//                print("입력한 연락처정보가 잘못되었습니다. 입력 형식을 확인해주세요.")
//            } else if age_flag == 0 && contact_flag == 0{
//                print("입력한 나이, 연락처정보가 잘못되었습니다. 입력 형식을 확인해주세요.")
//            }
//          
//            
//        }
//    } else if menu == "2" {
//        // 연락처 목록보기
//        for i in contactList {
//            print("- \(i)")
//        }
//    } else if menu == "3" {
//        print("연락처에서 찾을 이름을 입력해주세요 : ", terminator: "")
//        // 사용자 검색값을 입력받는다.
//        let searchUser:String = readLine()!
//        
//        // 만약, 연락처 정보에 없는 이름을 입력했는 지, 없는 지 체크하는 변수를 하나 생성한다.
//        var name_check:Int = 0
//        
//        // 반목문을 이용해서 현재까지 저장되어 있는 연락처 개수까지 반복하면서 검색값과 비교한다.
//        // 검색값이 동일하다면 출력 함수를 이용하여 출력한다.
//        for i in 0...contactList.count-1 {
//            if searchUser == String(contactList[i].split(separator: " / ")[0]) {
//                print("- \(contactList[i])")
//                name_check += 1
//            }
//        }
//        
//        // name_check 변수값이 0 이라면, 반복문이 돌 때 변수값이 증가되지 않았다는 의미로 연락처에 해당 값이 없다는 것을 의미한다.
//        if name_check == 0 {
//            print("연락처에 \(searchUser) 이(가) 없습니다.")
//        }
//    } else if menu == "x" {
//        print("[프로그램 종료]")
//        // program_life 값을 0으로 변경함으로써, 프로그램을 종료시킨다.
//        programLife = 0
//    }
//
//}
//
