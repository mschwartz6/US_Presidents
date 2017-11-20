//
//  Presidents.h
//  US_Presidents
//
//  Created by alive on 11/17/17.
//  Copyright © 2017 Matthew Schwartz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Presidents : NSObject
@property(strong, nonatomic)NSDictionary *presidentsDict;
@property (strong,nonatomic)NSArray *presidentKeys;
@property (strong,nonatomic)NSArray *presidentName;
@property (strong,nonatomic)NSArray *presidentYearDied;
@property (strong,nonatomic)NSArray *presidentPlaceDied;
@property (strong,nonatomic)NSArray *presidentYearBorn;
@property (strong,nonatomic)NSArray *presidentPlaceBorn;
@property (strong,nonatomic)NSArray *presidentAmountTerms;
@property (strong,nonatomic)NSArray *presidentImgPath;
@property (strong,nonatomic)NSArray *presidentParties;
@property (strong,nonatomic)NSArray *presidentYearTookOffice;
@property (strong,nonatomic)NSArray *presidentOccupations;
-(id)initWithData;
@end
