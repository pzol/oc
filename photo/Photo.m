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

- (void) setCaption: (NSString*) string
{
  caption = string;
}

- (void) setPhotographer: (NSString*) string
{
  photographer = string;
}

- (NSString*) caption
{
  return caption;
}

- (NSString*) photographer
{
  return photographer;
}

- (void) dealloc
{
    [caption release];
    [photographer release];
    [super dealloc];
}

@end
