//
//  PresidentDetailViewController.m
//  US_Presidents
//
//  Created by alive on 11/17/17.
//  Copyright © 2017 Matthew Schwartz. All rights reserved.
//

#import "PresidentDetailViewController.h"

@interface PresidentDetailViewController ()

@end

@implementation PresidentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)viewWillAppear:(BOOL)animated
{
    self.view.backgroundColor = [_colorPalette objectAtIndex:2];
    self.navigationController.navigationBar.prefersLargeTitles = NO;
    _presidentImage.image = [UIImage imageNamed:[_presDetails objectAtIndex:9]];
    _labelName.text = [_presDetails objectAtIndex:0];
    
    if ([[_presDetails objectAtIndex:3] isEqualToString:@"N-A"])
        _labelDisplay.text = [NSString stringWithFormat:@"Born %@; %@\n\nParty: %@\n\nSworn in %@\n\n%@\n\nFormerly of %@",[_presDetails objectAtIndex: 1],[_presDetails objectAtIndex: 2],[_presDetails objectAtIndex: 5],[_presDetails objectAtIndex: 6],[_presDetails objectAtIndex: 7],[_presDetails objectAtIndex: 8]];
    else
        _labelDisplay.text = [NSString stringWithFormat:@"Born %@; %@\n\nDied %@; %@\n\nParty: %@\n\nSworn in %@\n\n%@\n\nFormerly %@",[_presDetails objectAtIndex: 1],[_presDetails objectAtIndex: 2],[_presDetails objectAtIndex: 3],[_presDetails objectAtIndex: 4],[_presDetails objectAtIndex: 5],[_presDetails objectAtIndex: 6],[_presDetails objectAtIndex: 7],[_presDetails objectAtIndex: 8]];
    
    _labelName.font =  [_appFont objectAtIndex:0];
    _labelDisplay.font = [_appFont objectAtIndex:2];
    _labelDisplay.backgroundColor = [UIColor whiteColor];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
