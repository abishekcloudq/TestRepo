public class ApexDemo{
	
	Integer x=10;  // class-level variable by default as Private/ Non- static Variable 
	Static Integer y=20; // Static Variable
	
	/*
	@author : Abishek ND
	@Params: 
	@Description:
	*/
	public void setValues(Integer x){
		this.x=x;
		y=x;
	}
	public void displayValues(){
	
	system.debug('😊😊' + this.x);
	system.debug('😂😂😁' + y);
	
	}
      
}