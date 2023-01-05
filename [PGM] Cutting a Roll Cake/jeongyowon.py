from collections import Counter

def solution(topping):
    answer = 0
    
    total = Counter(topping)
    set_a = set()
    
    while len(topping) > 1:
        element = topping.pop()
        set_a.add(element)
        
        if total[element] > 1:
            total[element] = total[element]-1
        else:
            del total[element]

        if len(total) == len(set_a):
            answer+=1
            
    return answer

