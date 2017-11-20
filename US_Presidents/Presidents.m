//
//  Presidents.m
//  US_Presidents
//
//  Created by alive on 11/17/17.
//  Copyright © 2017 Matthew Schwartz. All rights reserved.
//

#import "Presidents.h"

@implementation Presidents
-(id)initWithData
{
    self = [super init];
    if (self)
    {
    
       NSString * path = [[NSBundle mainBundle]pathForResource:@"USP" ofType:@"plist"];
        _presidentsDict = [NSDictionary dictionaryWithContentsOfFile:path];
        
        _presidentKeys = [_presidentsDict allKeys];
        _presidentName = [_presidentsDict objectForKey:@"presnames"];
        _presidentYearBorn = [_presidentsDict objectForKey:@"birthdays"];
        _presidentYearDied =[_presidentsDict objectForKey:@"yeardied"];
        _presidentPlaceDied = [_presidentsDict objectForKey:@"placedied"];
       _presidentPlaceBorn = [_presidentsDict objectForKey:@"birthplace"];
        _presidentAmountTerms =[_presidentsDict objectForKey:@"amountofterms"];
        _presidentImgPath =[_presidentsDict objectForKey:@"imgpath"];
        _presidentParties = [_presidentsDict objectForKey:@"parties"];
        _presidentYearTookOffice = [_presidentsDict objectForKey:@"yeartookoffice"];
        _presidentOccupations = [_presidentsDict objectForKey:@"previousoccupation"];
        
    }
    return self;
}
@end
