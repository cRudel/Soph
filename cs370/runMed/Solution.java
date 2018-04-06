import java.util.*;

public class Solution {
    

    private static PriorityQueue<Double> big;
    private static PriorityQueue<Double> small;
    
public static void main(String[] args) 
{
    big = new PriorityQueue<>(Collections.reverseOrder());
    small = new PriorityQueue<>();
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    int [] nums = new int[n];
    for (int i = 0; i < n; i++) 
        nums[i] = sc.nextInt();
    
    medianTracker(nums);
}
    
static void medianTracker(int [] arr) 
{
    for (int i = 0; i < arr.length; i++) 
    {
        if (big.isEmpty()) 
            big.add((double) arr[i]);
        else if (big.size() == small.size()) 
        {
            if ((double) arr[i] < small.peek()) 
                big.add((double) arr[i]);
            else 
            {
                small.add((double) arr[i]);
                big.add(small.remove());
            }
        }
        else if (big.size() > small.size())
        {
            if ((double) arr[i] > big.peek()) 
                small.add((double) arr[i]);
            else 
            {
                big.add((double) arr[i]);
                small.add(big.remove());
            }
        }   
        System.out.println(getMedian());
    }
    return;
}
    
    private static double getMedian() {
        if (big.isEmpty()) 
            return 0;
        else if (big.size() == small.size()) 
            return (big.peek() + small.peek()) / 2;
        else  
            return big.peek();
    }
}
