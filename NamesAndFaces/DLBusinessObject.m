//
//  DLBusinessObject.m
//  NamesAndFaces
//
//  Created by DetroitLabsUser on 3/14/14.
//  Copyright (c) 2014 EliotWilliams. All rights reserved.
//

#import "DLBusinessObject.h"

@implementation DLBusinessObject

- (id)init
{
    self = [super init];
    if (self) {
        self.dbName = @"NamesAndFaces";
    }
    return self;
}

@end
