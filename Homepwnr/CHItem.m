//
//  Copyright (c) 2012 CHAtl. All rights reserved.
//

#import "CHItem.h"

//////////////////////////

@interface CHItem ()

@end

//////////////////////////

@implementation CHItem

@synthesize itemName        = _itemName;
@synthesize valueInDollars  = _valueInDollars;
@synthesize serialNumber    = _serialNumber;
@synthesize dateCreated     = _dateCreated;

+ (id)randomItem
{
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray *randomNounList      = @[@"Bear", @"Spork", @"Mac"];

    NSInteger adjectiveIndex = arc4random_uniform([randomAdjectiveList count]);
    NSInteger nounIndex      = arc4random_uniform([randomNounList count]);
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                            randomAdjectiveList[adjectiveIndex],
                            randomNounList[nounIndex]];
    
    int randomValue = arc4random_uniform(100);
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];

    CHItem *newItem = [[self alloc] initWithItemName:randomName
                                      valueInDollars:randomValue
                                        serialNumber:randomSerialNumber];
    return newItem;
}

#pragma mark - Initializers

- (id)initWithItemName:(NSString *)name
        valueInDollars:(int)value
          serialNumber:(NSString *)sNumber
{
    self = [super init];
    if (self) {
        _itemName       = [name copy];
        _valueInDollars = value;
        _serialNumber   = [sNumber copy];
        _dateCreated    = [NSDate date];
    }
    
    return self;
}

#pragma mark -

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@\t\t($%i)\t(SN:%@)", self.itemName, self.valueInDollars, self.serialNumber];
}

@end
