function solution(k, tangerine) {
    const arr = {};

    tangerine.forEach((n) => {
        arr[n] = ++arr[n] || 1;
    });

    const kind = Object.values(arr).sort((a, b) => b - a);

    let sum = 0;
    let answer = 0;

    for (let num of kind) {
        answer++;
        sum += num;

        if (sum >= k) break;
    }

    return answer;
}

console.log(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]));