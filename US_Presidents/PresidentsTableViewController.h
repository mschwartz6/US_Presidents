//
//  PresidentsTableViewController.h
//  US_Presidents
//
//  Created by alive on 11/17/17.
//  Copyright © 2017 Matthew Schwartz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Presidents.h"
#import "PresidentDetailViewController.h"
#import "PresidentsTableViewCell.h"
@interface PresidentsTableViewController : UITableViewController <UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end
