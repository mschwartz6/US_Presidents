//
//  PresidentDetailViewController.h
//  US_Presidents
//
//  Created by alive on 11/17/17.
//  Copyright © 2017 Matthew Schwartz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PresidentDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *presidentImage;
@property (strong, nonatomic)NSArray *presDetails;
@property (strong, nonatomic) IBOutlet UILabel *labelName;
@property (strong, nonatomic) IBOutlet UILabel *labelDisplay;
@property (strong, nonatomic)NSArray *colorPalette;
@property (strong, nonatomic)NSArray *appFont;
@end
