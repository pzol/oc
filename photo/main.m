#import <Foundation/Foundation.h>
#import <stdio.h>
#import "Photo.m"

int main(void) {
  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  printf("Photo\n");
  Photo* photo;
  photo = [Photo new];
  NSString* sin = @"dupa";
  [photo setCaption:sin];

  printf("%s\n", photo.caption.UTF8String);
}
