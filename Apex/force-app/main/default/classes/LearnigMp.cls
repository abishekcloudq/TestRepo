/**
 * @description       : 
 * @author            : Abishek ND
 * @group             : 
 * @last modified on  : 06-18-2025
 * @last modified by  : Abishek ND
**/
public class LearnigMp extends MapLearning {
    /**
    * @description 
    * @author Abishek ND | 06-18-2025 
    * @param Map<Integer MapLearning> mmap 
    * @param Integer rollno 
    **/
    public static void fieldknowrollno(Map<Integer,MapLearning> mmap,Integer rollno){
        if(mmap.containskey(rollno)){
            mmap.get(rollno).calculateResultStatus();
        }
    }
}