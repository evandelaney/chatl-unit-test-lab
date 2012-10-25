//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import "CHAppDelegate.h"

#import "CHItemStore.h"

//////////////////////////

@interface CHAppDelegate ()

@property (strong, nonatomic) CHItemStore *itemStore;

@end

//////////////////////////

@implementation CHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self randomizeItemStore];
    
    for (NSObject *o in [[self itemStore] allItems]) {
        NSLog(@"%@", o);
    }
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

#pragma mark - Helper Methods

- (void)randomizeItemStore
{
    [self setItemStore:[CHItemStore defaultStore]];
    
    for (int i = 0; i < 10; i++) {
        [[self itemStore] createItem];
    }
}

@end
