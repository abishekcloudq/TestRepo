/**
 * @description       : 
 * @author            : Abishek ND
 * @group             : 
 * @last modified on  : 06-24-2025
 * @last modified by  : Abishek ND
**/
public with sharing class Democlass {
    public  List<Account> sth(){
    List<Id> recordIds = new List<Id>();
    recordIds.add('001gL000006sNvVQAU');
    recordIds.add('001gL000001U2ILQA0');
    List<Account> sr=[SELECT Id, Name FROM Account WHERE Id IN :recordIds];
    return sr;
    }
}