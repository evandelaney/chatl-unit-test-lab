//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import "CHItemStore.h"
#import "CHItem.h"

//////////////////////////

@interface CHItemStore ()

@property (strong, nonatomic, readwrite) NSMutableArray *allItems;

@end

//////////////////////////

@implementation CHItemStore

#pragma mark - Singleton

+ (CHItemStore *)defaultStore
{
    static CHItemStore *defaultStore = nil;
    
    static dispatch_once_t defaultItemStoreAlloc;
    dispatch_once(&defaultItemStoreAlloc, ^{
        defaultStore = [[super allocWithZone:nil] init];
    });
    
    return defaultStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self defaultStore];
}

- (id)init
{
    self = [super init];
    if (self) {
        _allItems = [NSMutableArray array];
    }
    
    return self;
}

#pragma mark - Public API

- (NSObject<CHItemProperties> *)createItem
{
    CHItem *item = [CHItem randomItem];
    
    [(NSMutableArray *)[self allItems] addObject:item];
    
    return item;
}

@end
