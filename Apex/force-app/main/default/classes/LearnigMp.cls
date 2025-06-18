public class LearnigMp extends MapLearning {
    public static void fieldknowrollno(Map<Integer,MapLearning> mmap,Integer rollno){
        if(mmap.containskey(rollno)){
            mmap.get(rollno).calculateResultStatus();
        }
    }
}