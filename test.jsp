<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body style="background-color:blue ;">
		 <title>Adar_Yaniv-Hit</title>  
			
          <%! int n,sum=0;
               String name,birthdate;
          %>
		  <p style="font-family:'Calibri';font-size:50px;color:pink">
		  Welcome 
		  <% 
		  name= request.getParameter("name");
		  out.println(name);
		  %> </p>
		  <p style="font-family:'Calibri';font-size:50px;color:pink">
		  Your life path number is:      <!--<font size="9" color="pink"> --> 
          <%birthdate= request.getParameter("birthdate");
			n=birthdate.length();
			sum=0;
			for(int i=0; i<n;i++){
				if(birthdate.charAt(i) != '-') sum += Character.getNumericValue(birthdate.charAt(i));
			}
			
			while(sum>9){
				sum = sum/10 + sum%10;
			}
			out.println(sum);
			
          %>
       </font> </p>
	   <p style="text-align:center;font-family:'Calibri';font-size: 42px;color:white"> <i> 
	   <%
		switch(sum){
				case 1:
				out.println("Those who walk a life path with number 1 have an inner zeal that pushes them to constantly climb towards goals others think unreachable. 1 gives birth to all other numbers. its energy is that of the master creator");
				break;
				case 2:
				out.println("Those who walk a life path with number 2 have the most amazing ability to create peace and harmony wherever they go. 2 unites and brings an end to separateness. its energy is that of the sacred deminine.");
				break;
				case 3:
				out.println("Those who walk a life path with number 3 have unlimited creativity and almost superhuman abilities. 3 reminds us that we are born of both human and divine spark. its energy is that of the bringer of change.");
				break;
				case 4:
				out.println("Those who walk a life path with number 4 have an almost unbreakable spirit and astounding capabilities of self-control. 4 reminds us that equality for all sides creates the strongest structures. its energy is that of stability.");
				break;
				case 5:
				out.println("Those who walk a life path with number 5 have an uncanny ability to understand the deepest esoteric & metaphysical teachings. 5 turns the mystical into the norm. its energy is that of experience.");
				break;
				case 6:
				out.println("Those who walk a life path with number 6 gift the world with unconditional love, healing, and nurturing. 6 teaches true compassion and empthy. its energy is that of mother gaia.");
				break;
				case 7:
				out.println("Those who walk a life path with number 7 have the admireable ability of seeing the infinite possibilities in every person and situation. 7 reminds us that the answers to al questions are in our DNA. its energy is that of the seeker.");
				break;
				case 8:
				out.println("Those who walk a life path with number 8 have incredible strength of will and can endure anything. 8 reminds us the soul has a mind of its own and lives on, no matter what. its energy is eternal life.");
				break;
				case 9:
				out.println("Those who walk a life path with number 9 gift the world with sage wisdom and incredible kindness. 9 reminds us that by allowing our own divine light to shine, we can change the world. its ennergy is that of the greater good.");
				break;
				default:
				break;
			}
	   %> 
	   </i> </p> 
	   
   </body>
</html>