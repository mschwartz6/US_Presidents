//
//  PresidentsTableViewController.m
//  US_Presidents
//
//  Created by alive on 11/17/17.
//  Copyright © 2017 Matthew Schwartz. All rights reserved.
//

#import "PresidentsTableViewController.h"
#import <Foundation/Foundation.h>
@interface PresidentsTableViewController (){
    Presidents *presidents;
    NSMutableArray *presidentDetails;
    bool isFiltered;
    NSMutableArray *filteredPresidents;
    NSArray *appFont ;
    NSArray *colorPalette ;
    
}

@end

@implementation PresidentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.searchBar.delegate = self;
    presidents = [[Presidents alloc]initWithData];
    isFiltered = false;
    self.tableView.rowHeight = 100;
    
    appFont = [[NSArray alloc]initWithObjects:[UIFont fontWithName:@"Zapfino" size:22],[UIFont fontWithName:@"Georgia-Bold" size:22],[UIFont fontWithName:@"Georgia" size:17], nil];
    colorPalette = [[NSArray alloc]initWithObjects:[UIColor colorWithRed:.91 green:.11 blue:.11 alpha:1.0],[UIColor whiteColor], [UIColor colorWithRed:.18 green:.41 blue:.95 alpha:1.0], nil];
    self.tableView.backgroundColor = [colorPalette objectAtIndex:0];
    self.navigationItem.title = @"US Presidents";
    
}
-(void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (isFiltered) return [filteredPresidents count];
    return [presidents.presidentName count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PresidentsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"presidentCell" forIndexPath:indexPath];
    
    if (isFiltered)
    {
        cell.name.text = filteredPresidents[indexPath.row];
        cell.party.text = @" ";
    }
    else
    {
    cell.name.text = presidents.presidentName[indexPath.row];
    cell.party.text = presidents.presidentParties[indexPath.row];
    }
    cell.name.font = [appFont objectAtIndex:1];
    cell.party.font = [appFont objectAtIndex:2];
    
    if (indexPath.row % 3 == 0)
       cell.backgroundColor = [colorPalette objectAtIndex:0];
    
    else if ( (indexPath.row % 3) - 1 == 0)
        cell.backgroundColor = [colorPalette objectAtIndex:1];
    
    else
        cell.backgroundColor = [colorPalette objectAtIndex:2];
    
    cell.layer.borderColor = [UIColor blackColor].CGColor;
    cell.layer.borderWidth = 2.0;
    return cell;
}


-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if (searchText.length == 0) isFiltered = false;
    
    else
    {
        isFiltered = true;
        filteredPresidents = [[NSMutableArray alloc]init];
        
        for (NSString* pres in presidents.presidentName)
        {
            NSRange nameRange = [pres rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (nameRange.location != NSNotFound) [filteredPresidents addObject:pres];
            
        }
        
    }
    [self.tableView reloadData];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PresidentDetailViewController *destination = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (isFiltered)
    {
        NSInteger row = indexPath.row;
        
        NSString *chosenName = filteredPresidents[row];
        for (int i = 0; i < [presidents.presidentName count]; i++)
        {
            if ([[presidents.presidentName objectAtIndex:i] isEqualToString:chosenName])
            {
                row = i;
                break;
            }
        }
        presidentDetails = [[NSMutableArray alloc]initWithObjects:
                            presidents.presidentName[row],
                            presidents.presidentYearBorn[row],
                            presidents.presidentPlaceBorn[row],
                            presidents.presidentYearDied[row],
                            presidents.presidentPlaceDied[row],
                            presidents.presidentParties[row],
                            presidents.presidentYearTookOffice[row],
                            presidents.presidentAmountTerms[row],
                            presidents.presidentOccupations[row],
                            presidents.presidentImgPath[row],nil];
        destination.presDetails = [presidentDetails copy];
    }
    else {
    NSInteger row = indexPath.row;
    
    presidentDetails = [[NSMutableArray alloc]initWithObjects:
    presidents.presidentName[row],
    presidents.presidentYearBorn[row],
    presidents.presidentPlaceBorn[row],
    presidents.presidentYearDied[row],
    presidents.presidentPlaceDied[row],
    presidents.presidentParties[row],
    presidents.presidentYearTookOffice[row],
    presidents.presidentAmountTerms[row],
    presidents.presidentOccupations[row],
    presidents.presidentImgPath[row],nil];
    destination.presDetails = [presidentDetails copy];
    }
    destination.colorPalette = colorPalette;
    destination.appFont = appFont;
}


@end
