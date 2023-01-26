import java.util.*;

class Solution {
    public int solution(String dartResult) {
        int answer = 0;
        ArrayList<Integer> A = new ArrayList<Integer>();
        int a = -1;
        int A_get = 0;
        for(int i = 0; i < dartResult.length(); i++){
            String sub = dartResult.substring(i, i + 1);
            switch(sub){
                case "S":
                    break;
                case "D": 
                    A_get = A.get(a);
                    A.set(a, A_get * A_get);
                    break;
                case "T":
                    A_get = A.get(a);
                    A.set(a, A_get * A_get * A_get);
                    break;
                case "*":
                    A.set(a, A.get(a) * 2);
                    if(a != 0)
                        A.set(a - 1, A.get(a - 1) * 2);
                    break;
                case "#":
                    A.set(a, A.get(a) * -1);
                    break;
                case "0":
                    if(i != 0 && (dartResult.substring(i - 1, i)).compareTo("1") == 0)
                        A.set(a, 10);
                    else{
                        A.add(0);
                        a++;
                    }
                    break;
                default:
                    A.add(Integer.parseInt(sub));
                    a++;
                    break;
            }
        }
        for(int i : A)
            answer += i;
        return answer;
    }
}