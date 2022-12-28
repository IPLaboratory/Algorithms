import java.util.*;

public class ParkHyunS00 {
    public static int solution(int k, int[] tangerine) {
        int answer = 0;
        HashMap<Integer, Integer> map = new HashMap<>();

        for (int n : tangerine){
            map.put(n, map.getOrDefault(n, 0) + 1);
        }

        List<Map.Entry<Integer, Integer>> list = new ArrayList<>(map.entrySet());
        list.sort((num1, num2) -> num2.getValue().compareTo(num1.getValue()));

        for(Map.Entry<Integer, Integer> n : list){
            if(k <= 0) break;
            answer++;
            k -= n.getValue();
        }

        return answer;
    }
    public static void main(String[] args){
        int[] array = {1, 1, 1, 1, 2, 2, 2, 3};
        int k = 2;
        int answer = solution(k, array);

        System.out.println(answer);
    }
}