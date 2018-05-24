

/**-Create a class Employee with instance variables firstName, lastName, employeeId and encpasulate the variables
 * -Create setter and getter methods-Create another class EmployeeTest with main() method
 * -Create objects for the Employee class in the main() method and try to access the instance variables using setters and getters
 * -Try out how primitive data types works-
 * Create a method and try to print out the default values for the instance varaibles
 * -Create and print a local Variable and see how it works-Work with the static variables
 * @author LENOVO
 *
 */




public class Employee {
	
	
	private String firstsName="pranav";
	private String lastName="r";
	private static int employeeId=9;
	
	
	
	public Employee(String firstsName, String lastName, int employeeId) {
		super();
		this.firstsName = firstsName;
		this.lastName = lastName;
		this.employeeId =employeeId ;
	}
	
	
	
	
	public Employee() {
		// TODO Auto-generated constructor stub
	}




	public String primVar="I'm primitive variable printing from EmployeeClass";
	
	
	
	public void show(String firstsName,String lastName, int employeeId)
	{
	this.firstsName=firstsName;
	this.lastName=lastName;
	this.employeeId=employeeId;
	
	System.out.println("FirstName : "+ firstsName   +"LastName: "+ lastName+"EmpId: "    + employeeId );
	}
	
	//Getter& Setter Methods for instance Variables 
	
	public String getFirstsName() {
		return firstsName;
	}
	public void setFirstsName(String firstsName) {
		this.firstsName = firstsName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	
	

}
