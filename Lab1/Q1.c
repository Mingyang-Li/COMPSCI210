#include <stdio.h>

int main()
{
    int number_of_hours;
    scanf("%d", &number_of_hours);
    
    //type your code here
    int days = number_of_hours / 24;
    int leftoverHours = number_of_hours % 24;
    
    printf("%i hours is equivalent to %i days and %i hours.", number_of_hours, days, leftoverHours);
    return 0;
}