//
//  main.swift
//  ContactMgmt
//
//  Created by 김민제 on 12/30/23.
//

import Foundation

// 프로그램 "x" 종료를 누를 때 까지 무한반복해야하기 때문에 while문을 사용해야 한다.

var program_life = 1

// 연락처 리스트 변수
var contractList:Array<String> = []

while program_life != 0 {
    // 사용자의 값을 입력 받기
    // terminator를 사용한 이유는?
    print("1) 연락처 추가 2) 연락처 목록보기 3) 연락처 검색 x) 종료")
    print("메뉴를 선택해주세요 : ", terminator: "")
    var menu = readLine()

    // 사용자가 나이 입력을 올바르게 입력했다면 flag 값은 1이고, 잘못 입력했다면 flag 값은 0이다.
    var age_flag:Int = 1
    // 사용자가 연락처 입력을 올바르게 입력했다면 flag 값은 1이고, 잘못 입력했다면 flag 값은 0이다.
    var contract_flag:Int = 1

    // 이름 변수
    var name:String = ""
    // 나이 변수
    var age:String = ""
    // 연락처 변수
    var contract:String = ""
    
    // 연락처 추가
    if menu == "1" {
        print("연락처 정보를 입력해주세요 : ", terminator: "")
        // readLine()은 무엇인가?, split(sparator: )은?
        var input = readLine()!.split(separator: "/")

        // 입력값이 아무것도 없을 때, 잘못된 입력입니다.
        if input.count == 0 {
            print("아무것도 입력되지 않았습니다. 입력 형식을 확인해주세요.")
        } // 입력값이 들어갔을 때,
        else if input.count != 0 {
            // 이름 공백 제거하기, 이름 올바른지 확인 하기
            for i in input[0] {
                if i != " " {
                    name.append(i)
                }
            }

            // 나이 공백 제거하기
            for i in input[1] {
                if i != " " {
                    age.append(i)
                }
            }

            // 나이 입력값 올바른지 확인 하기
            if Int(age) == nil {
                age_flag = 0
            } else if Int(age)! >= 1000 {
                age_flag = 0
            }

            // 연락처 입력값 올바른지 확인 하기
            var num = 0
            for i in input[2] {
                if i == "-" {
                    num += 1
                }
                if i != " " {
                    contract.append(i)
                }
            }

            // 연락처 "-" 값이 2개가 아니라면 잘못된 입력입니다.
            if num != 2 {
                contract_flag = 0
            }

            // 출력값
            if age_flag == 1 && contract_flag == 1 {
                print("입력한 정보는 \(age)세 \(name)(\(contract))입니다.")
            } else if age_flag == 0{
                print("입력한 나이정보가 잘못되었습니다. 입력 형식을 확인해주세요.")
            } else if contract_flag == 0 {
                print("입력한 연락처정보가 잘못되었습니다. 입력 형식을 확인해주세요.")
            }
            
            // 연락처 리스트에 저장하기
            contractList.append("\(name) / \(age) / \(contract)")
            
        }
    } else if menu == "2" {
        // 연락처 목록보기
        for i in contractList {
            print("- \(i)")
        }
    } else if menu == "3" {
        // 사용자 검색값을 입력받는다.
        var search_User:String = readLine()!
        print(type(of: search_User))
        
        // 반목문을 이용해서 현재까지 저장되어 있는 연락처 개수까지 반복하면서 검색값과 비교한다.
        // 검색값이 동일하다면 출력 함수를 이용하여 출력한다.
        for i in 0...contractList.count-1 {
            if search_User == String(contractList[i].split(separator: " / ")[0]) {
                print("- \(contractList[i])")
            }
        }
    } else if menu == "x" {
        print("[프로그램 종료]")
        // program_life 값을 0으로 변경함으로써, 프로그램을 종료시킨다.
        program_life = 0
    }

}

