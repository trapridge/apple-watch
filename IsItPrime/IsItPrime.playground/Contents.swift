//: Playground - noun: a place where people can play

import UIKit

func isPrime(candidate:Int) -> Bool {
    if candidate < 2 {
        return false
    }
    for var i = candidate - 1; i > 1; i -= 1 {
        if(candidate % i == 0) {
            return false
        }
    }
    return true
}

print(isPrime(0))
print(isPrime(1))
print(isPrime(2))
print(isPrime(3))
print(isPrime(4))
print(isPrime(5))
print(isPrime(6))
print(isPrime(7))
print(isPrime(8))
print(isPrime(9))
print(isPrime(10))


func isPrime2(i:Int, j:Int = 2) -> Bool {
    if i < 2 {
        return false
    }
    else if i == j {
        return true
    }
    else if i % j == 0 {
        return false
    }
    else {
        return isPrime2(i, j: j + 1)
    }
}

print(isPrime2(0))
print(isPrime2(1))
print(isPrime2(2))
print(isPrime2(3))
print(isPrime2(4))
print(isPrime2(5))
print(isPrime2(6))
print(isPrime2(7))
print(isPrime2(8))
print(isPrime2(9))
print(isPrime2(10))



