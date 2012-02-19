#import "Photo.h"

@implementation Photo

- (id) init
{
    if ( self = [super init] )
    {
        [self setCaption: @"Default Caption"];
        [self setPhotographer: @"Default Photographer"];
    }
    return self;
}

- (void) dealloc
{
    [caption release];
    [photographer release];
    [super dealloc];
}

@end
