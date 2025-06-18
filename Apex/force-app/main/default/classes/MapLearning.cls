/**
 * @description       : 
 * @author            : Abishek ND
 * @group             : 
 * @last modified on  : 06-18-2025
 * @last modified by  : Abishek ND
**/
public virtual class MapLearning {
    protected Integer rollno;
    protected String department;
    String Name;
    List<Integer> marks;
    Integer total=0;
    String result;
    final Integer passmark=35;
    
    /**
    * @description 
    * @author Abishek ND | 06-18-2025 
    * @return List<Account> 
    **/
    Public static List<Account> accList(){
        List<Account> acList= [SELECT Type, Phone,AccountNumber FROM Account where Phone!=null AND AccountNumber!=null];
        return acList;
    }
    
    /**
    * @description 
    * @author Abishek ND | 06-18-2025 
    * @return List<Opportunity> 
    **/
    public static List<Opportunity> aclist(){
        List<Opportunity> lstofopp=[Select Name,Amount,Type FROM Opportunity];
        Map<Id,Opportunity> mlist= new map<Id,Opportunity>(lstofopp);
        for(Id opid:mlist.keyset())
        {
            Opportunity oclist=mlist.get(opid);
            system.debug(oclist.Name);
        }
        return lstofopp;
    }
   
    /**
    * @description 
    * @author Abishek ND | 06-18-2025 
    **/
    public MapLearning(){}
   public MapLearning(Integer rollno,String department,String Name, List<Integer> marks) {
        this.rollno = rollno;
        this.Name = Name;
        this.marks = marks;
       this.department=department;
    }

    // Method to calculate pass/fail
    public void calculateResultStatus() {
        result = 'pass';
        for (Integer mark : marks) {
            if (mark < passmark) {
                result = 'fail';
                break;
            }
        }
        calculateTotal();
    }

    // Method to calculate total marks
    public void calculateTotal() {
        total = 0; // initialize before summing
        for (Integer m : marks) {
            total += m;// total = total+m
        }
        displyalllist();
    }
    public void displyalllist(){
        system.debug('******************');
        system.debug('Roll No'+ rollno);
        system.debug('Name'+ Name);
        system.debug('Total'+ total);
        system.debug('Result' + result);
        system.debug('******************');
    }   
}