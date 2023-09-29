#include <stdio.h>
#include <string.h>

int transition(int state, char input) 
{
    if (state == 0 && input == 'a')
    {
        return 1;
    }
    else if (state == 0 && input == 'b')
    {
        return 0;
    }
    else if (state == 0 && input == 'c')
    {
        return 0;
    }
    else if (state == 1 && input == 'a')
    {
        return 1;
    }
    else if (state == 1 && input == 'b')
    {
        return 2;
    }
    else if (state == 1 && input == 'c')
    {
        return 0;
    }
    else if (state == 2 && input == 'a')
    {
        return 1;
    }
    else if (state == 2 && input == 'b')
    {
        return 0;
    }
    else if (state == 2 && input == 'c')
    {
        return 3;
    }
    else if (state == 3 && input == 'a' || input == 'b' || input == 'c')
    {
        return 3; 
	}
}

int main() 
{
    int currentState = 0;
    char inputString[100]; 
    printf("Enter a String : ");
    scanf("%s", inputString);   
    int i, len = strlen(inputString);
    for (i = 0; i < len; i++) 
    {
    	if(inputString[i]=='a' || inputString[i]=='b' || inputString[i]=='c')
    	{
        	currentState = transition(currentState, inputString[i]);
        	if (currentState == 3) 
        	{
            	printf("Accepted");
            	return 0; 
        	}
    	}
    	else
    	{
    		goto x;
    	}
    }
    x:
    printf("Rejected");
    return 0;
}
