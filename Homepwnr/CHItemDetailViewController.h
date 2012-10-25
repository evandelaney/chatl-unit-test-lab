//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CHItem;

#warning Migrate this to a UITableViewController or UICollectionViewController
@interface CHItemDetailViewController : UIViewController

@property (strong, nonatomic) CHItem *item;

/*
 *      Can we get any reuse out of this view controller?
 *
 *      What data and states does this view controller manage?
 *
 *      What's the goal of this view controller?
 */

@end
