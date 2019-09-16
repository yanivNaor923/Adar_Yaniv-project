<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
       <p><font color=red>
          <%! int n,sum=0;
               String name,birthdate;
          %>
		  <font size="6" color="pink">Welcome 
		  <% 
		  name= request.getParameter("name");
		  out.println(name);
		  %>
		  </font> </p>
		  <p><font size="9" color="pink">Your lucky number is:
          <%birthdate= request.getParameter("birthdate");
			n=birthdate.length();
			for(int i=0; i<n;i++){
				if(birthdate.charAt(i) != '/') sum += Character.getNumericValue(birthdate.charAt(i));
			}
			
			while(sum>9){
				sum = sum/10 + sum%10;
			}
			out.println(sum);
			sum=0;
          %>
       </font> </p>
   </body>
</html>