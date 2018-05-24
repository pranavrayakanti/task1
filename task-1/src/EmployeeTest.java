
public class EmployeeTest {

	
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
    Employee obj=new Employee("ConsPranav","ConsRaya",13);
    
    
    System.out.println("Printing Variable's using Para Constructor:");

   
    System.out.println(" EmpFirstName:     "+obj.getFirstsName());
    System.out.println(" EmpLastName:    "+obj.getLastName());
    System.out.println(" EmpId     "+obj.getEmployeeId());
    
    
    
    System.out.println("Printing Primtive Variable:");
    System.out.println(obj.primVar);
    
    
    
    
    
    Employee obj1=new Employee();
    System.out.println("Printing Variable's using  Deafault Constructor:");

    System.out.println(" EmpFirstName:  "+obj1.getFirstsName());
    System.out.println(" EmpLastName:  "+obj1.getLastName());
    System.out.println(" EmpId:  "+obj1.getEmployeeId());
    
    
    
    System.out.println("Printing Variable's using Show Method :");

    obj.show("Methodpran", "MethodRaya", 2);
    
    
    

	}

}
