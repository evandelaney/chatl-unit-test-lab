//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CHItemProperties;

@interface CHItemStore : NSObject

@property (strong, nonatomic, readonly) NSArray *allItems;

+ (CHItemStore *)defaultStore;

- (NSObject<CHItemProperties> *)createItem;

- (void)deleteItem:(NSObject<CHItemProperties> *)item;
#warning What other methods and properties will we need to migrate to Core Data and allow for the Items Table to be editable?

@end
