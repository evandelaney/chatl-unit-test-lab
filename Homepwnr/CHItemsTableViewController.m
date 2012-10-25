//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import "CHItemsTableViewController.h"
#import "CHItemStore.h"
#import "CHItem.h"

//////////////////////////

@interface CHItemsTableViewController ()

@property (strong, nonatomic, readonly) NSArray *allItems;

- (IBAction)addNewItem:(id)sender;

@end

//////////////////////////

NSString * const kCHItemsCell = @"Items Cell";

NSString * const kCHStoryboardIdentifierItems = @"Items Table View Controller";

//////////////////////////

@implementation CHItemsTableViewController

#pragma mark - All Items Property

- (NSArray *)allItems
{
    return [[self itemStore] allItems];
}

#pragma mark - Navigation Item

- (UINavigationItem *)navigationItem
{
    UINavigationItem *n = [super navigationItem];
    [n setTitle:NSLocalizedString(@"Homepwnr", @"Items TVC: Navigation Item: Title")];
    
    UIBarButtonItem *addBBI = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                            target:self
                                                                            action:@selector(addNewItem:)];
    [n setRightBarButtonItem:addBBI];
    
    return n;
}

#pragma mark - View Lifecycle

- (NSUInteger)supportedInterfaceOrientations
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        return UIInterfaceOrientationMaskAll;
    }
    
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

#pragma mark - Table View Data Source

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [[self allItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCHItemsCell];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCHItemsCell];
    }
    
    CHItem *i = [self allItems][indexPath.row];
    
    [[cell textLabel] setText:[i itemName]];
    [[cell detailTextLabel] setText:[i serialNumber]];
    
    return cell;
}


#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)aTableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CHItem *selectedItem = [self allItems][indexPath.row];
    NSLog(@"%@", selectedItem);
}


#pragma mark - IBActions

- (IBAction)addNewItem:(id)sender
{
    [[self itemStore] createItem];
    
    [[self tableView] reloadData];
}

@end
