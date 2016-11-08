//: Playground - noun: a place where people can play

import Cocoa

// Index are the data, the value for every value[] Is the edge to the node to which it is connected
struct UF {
    var data = [Int]()
    
    init(elements N: Int) {
        for i in 0...N-1 {
            self.data.append(i)
        }
    }
    
    // Quick Find Union
    mutating func quickunion(p: Int, q: Int) -> Void {
        let pid = self.data[p]
        let qid = self.data[q]
        
        if pid > self.count() || qid > self.count() {
            return
        }
        
        for i in 0...self.count() - 1 {
            if self.data[i] == pid {
                self.data[i] = qid
            }
        }
    }
    
    func connected(p: Int, q: Int) -> Bool {
        return self.data[p] == self.data[q]
    }
    
    func count() -> Int {
        return self.data.count
    }
}


var uf = UF(elements: 10)
uf.quickunion(p: 1, q: 2)
uf.quickunion(p: 4, q: 2)
uf.quickunion(p: 4, q: 6)
uf.quickunion(p: 1, q: 2)
print(uf.data)
