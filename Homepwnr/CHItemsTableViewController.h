//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import <UIKit/UIKit.h>

//////////////////////////

extern NSString * const kCHItemsCell;
extern NSString * const kCHStoryboardIdentifierItems;

//////////////////////////

@class CHItemStore;

@interface CHItemsTableViewController : UITableViewController

@property (strong, nonatomic) CHItemStore *itemStore;

@end
