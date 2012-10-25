//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import "CHAppDelegate.h"

#import "CHItemStore.h"
#import "CHItemsTableViewController.h"

//////////////////////////

@interface CHAppDelegate ()

@property (strong, nonatomic) CHItemStore *itemStore;

@end

//////////////////////////

@implementation CHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self randomizeItemStore];

    CHItemsTableViewController *itemsTVC = [[CHItemsTableViewController alloc] init];
    [itemsTVC setItemStore:[self itemStore]];
    
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:itemsTVC];
    
    UIWindow *mainWindow = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [mainWindow setRootViewController:navVC];
    [mainWindow makeKeyAndVisible];
    [self setWindow:mainWindow];
    
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
