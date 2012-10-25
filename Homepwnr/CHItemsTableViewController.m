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
    
    CHItem *i = [self allItems][indexPath.row];
    
    [[cell textLabel] setText:[i itemName]];
    [[cell detailTextLabel] setText:[i serialNumber]];
    
    return cell;
}

#warning Allow reshuffling items
- (void)tableView:(UITableView *)tableView
moveRowAtIndexPath:(NSIndexPath *)fromIndexPath
      toIndexPath:(NSIndexPath *)toIndexPath
{
}

#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)aTableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CHItem *selectedItem = [self allItems][indexPath.row];
    NSLog(@"%@", selectedItem);
}

#warning Allow deleting items
- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (editingStyle) {
        case UITableViewCellEditingStyleDelete: {
            
//            CHItem *item = [self allItems][indexPath.row];
//            [[self itemStore] deleteItem:item];
#warning Don't forget to make the changes to the data source
            
            [tableView deleteRowsAtIndexPaths:@[ indexPath ]
                             withRowAnimation:UITableViewRowAnimationFade];
            break;
        }
        case UITableViewCellEditingStyleInsert:
        case UITableViewCellEditingStyleNone:
        default:
            break;
    }
}

#pragma mark - IBActions

- (IBAction)addNewItem:(id)sender
{
    [[self itemStore] createItem];
    
//    [[self tableView] reloadData];
#warning Can you implement the table view change notifications?
}

@end
