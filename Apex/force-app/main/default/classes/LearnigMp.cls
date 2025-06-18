/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-18-2025
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class LearnigMp extends MapLearning {
    public static void fieldknowrollno(Map<Integer,MapLearning> mmap,Integer rollno){
        if(mmap.containskey(rollno)){
            mmap.get(rollno).calculateResultStatus();// Call the method to calculate result status
        }
    }
}