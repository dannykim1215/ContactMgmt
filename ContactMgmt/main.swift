//
//  main.swift
//  ContactMgmt
//
//  Created by 김민제 on 12/30/23.
//

import Foundation

// 사용자의 값을 입력 받기
// terminator를 사용한 이유는?
print("연락처 정보를 입력해주세요 : ", terminator: "")
// readLine()은 무엇인가?, split(sparator: )은?
var input = readLine()!.split(separator: "/")

// 사용자가 나이 입력을 올바르게 입력했다면 flag 값은 1이고, 잘못 입력했다면 flag 값은 0이다.
var age_flag:Int = 1
// 사용자가 연락처 입력을 올바르게 입력했다면 flag 값은 1이고, 잘못 입력했다면 flag 값은 0이다.
var contract_flag:Int = 1
// 사용자가 입력을 입력했다면 flag 값은 1이고, 입력 안했다면 flag 값은 0이다.
var none_flag:Int = 1

// 이름 변수
var name:String = ""
// 나이 변수
var age:String = ""
// 연락처 변수
var contract:String = ""


// 입력값이 아무것도 없을 때, 잘못된 입력입니다.
if input.count == 0 {
    none_flag = 0
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
}








