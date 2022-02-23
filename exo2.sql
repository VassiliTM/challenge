package exo;

public class Exo2 {

	public static void main(String[] args) {
		
		for (int i = 1; i <= 100; i++) {

			if((i % 3 == 0) && (i % 5 == 0)) 
			{
				System.out.println("ChaussettesSales");
			} 
			else if(i % 5 == 0) 
			{
				System.out.println("Sales");
			} 
			else if(i % 3 == 0)
			{
				System.out.println("Chaussettes");
			}
			else {
				System.out.println(i);
			}
		}
	}
}
