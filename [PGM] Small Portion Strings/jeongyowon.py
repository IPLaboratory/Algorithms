def solution(t, p):
    length = len(p)
    result = int(p)

    answer = 0

    for i in range(0, len(t) - length + 1):
        number = int(t[i : i + length])
        if number <= result:
            answer += 1

    return answer