//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CHItemProperties;

@interface CHItemStore : NSObject

@property (strong, nonatomic, readonly) NSArray *allItems;

+ (CHItemStore *)defaultStore;

- (NSObject<CHItemProperties> *)createItem;

@end
