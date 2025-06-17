/**
 * @description       : 
 * @author            : Abishek ND
 * @group             : 
 * @last modified on  : 06-17-2025
 * @last modified by  : Abishek ND
**/
public class LearnigMp extends MapLearning {
    public static void fieldknowrollno(Map<Integer,MapLearning> mmap,Integer rollno){
        if(mmap.containskey(rollno)){
            mmap.get(rollno).calculateResultStatus();
        }
    }
}